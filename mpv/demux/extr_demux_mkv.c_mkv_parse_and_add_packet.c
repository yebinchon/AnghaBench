
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct sh_stream {scalar_t__ type; TYPE_1__* codec; } ;
struct demux_packet {int len; int buffer; double pts; double dts; int pos; int avpacket; } ;
struct TYPE_9__ {double parse_timebase; TYPE_6__* av_parser; int av_parser_codec; scalar_t__ parse; struct sh_stream* stream; } ;
typedef TYPE_2__ mkv_track_t ;
typedef double int64_t ;
typedef int demuxer_t ;
struct TYPE_10__ {double pts; double dts; } ;
struct TYPE_8__ {int codec; } ;
typedef int AVCodec ;


 double AV_NOPTS_VALUE ;
 int AV_WB32 (int,size_t) ;
 size_t MKBETAG (char,char,char,float) ;
 double MP_NOPTS_VALUE ;
 scalar_t__ STREAM_AUDIO ;
 int add_packet (int *,struct sh_stream*,struct demux_packet*) ;
 int av_packet_copy_props (int ,int ) ;
 TYPE_6__* av_parser_init (int) ;
 int av_parser_parse2 (TYPE_6__*,int ,int **,int*,int,int,double,double,int ) ;
 int avcodec_alloc_context3 (int const*) ;
 int * avcodec_find_decoder (int) ;
 int demux_packet_copy_attribs (struct demux_packet*,struct demux_packet*) ;
 scalar_t__ handle_realaudio (int *,TYPE_2__*,struct demux_packet*) ;
 scalar_t__ libav_parse_wavpack (TYPE_2__*,int,int **,int*) ;
 int memcpy (int,int,int) ;
 int mp_codec_to_av_codec_id (int ) ;
 struct demux_packet* new_demux_packet (size_t) ;
 struct demux_packet* new_demux_packet_from (int *,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int talloc_free (struct demux_packet*) ;

__attribute__((used)) static void mkv_parse_and_add_packet(demuxer_t *demuxer, mkv_track_t *track,
                                     struct demux_packet *dp)
{
    struct sh_stream *stream = track->stream;

    if (stream->type == STREAM_AUDIO && handle_realaudio(demuxer, track, dp))
        return;

    if (strcmp(stream->codec->codec, "wavpack") == 0) {
        int size = dp->len;
        uint8_t *parsed;
        if (libav_parse_wavpack(track, dp->buffer, &parsed, &size) >= 0) {
            struct demux_packet *new = new_demux_packet_from(parsed, size);
            if (new) {
                demux_packet_copy_attribs(new, dp);
                talloc_free(dp);
                add_packet(demuxer, stream, new);
                return;
            }
        }
    }

    if (strcmp(stream->codec->codec, "prores") == 0) {
        size_t newlen = dp->len + 8;
        struct demux_packet *new = new_demux_packet(newlen);
        if (new) {
            AV_WB32(new->buffer + 0, newlen);
            AV_WB32(new->buffer + 4, MKBETAG('i', 'c', 'p', 'f'));
            memcpy(new->buffer + 8, dp->buffer, dp->len);
            demux_packet_copy_attribs(new, dp);
            talloc_free(dp);
            add_packet(demuxer, stream, new);
            return;
        }
    }

    if (track->parse && !track->av_parser) {
        int id = mp_codec_to_av_codec_id(track->stream->codec->codec);
        const AVCodec *codec = avcodec_find_decoder(id);
        track->av_parser = av_parser_init(id);
        if (codec)
            track->av_parser_codec = avcodec_alloc_context3(codec);
    }

    if (!track->parse || !track->av_parser || !track->av_parser_codec) {
        add_packet(demuxer, stream, dp);
        return;
    }

    double tb = track->parse_timebase;
    int64_t pts = dp->pts == MP_NOPTS_VALUE ? AV_NOPTS_VALUE : dp->pts * tb;
    int64_t dts = dp->dts == MP_NOPTS_VALUE ? AV_NOPTS_VALUE : dp->dts * tb;
    bool copy_sidedata = 1;

    while (dp->len) {
        uint8_t *data = ((void*)0);
        int size = 0;
        int len = av_parser_parse2(track->av_parser, track->av_parser_codec,
                                   &data, &size, dp->buffer, dp->len,
                                   pts, dts, 0);
        if (len < 0 || len > dp->len)
            break;
        dp->buffer += len;
        dp->len -= len;
        dp->pos += len;
        if (size) {
            struct demux_packet *new = new_demux_packet_from(data, size);
            if (!new)
                break;
            if (copy_sidedata)
                av_packet_copy_props(new->avpacket, dp->avpacket);
            copy_sidedata = 0;
            demux_packet_copy_attribs(new, dp);
            if (track->parse_timebase) {
                new->pts = track->av_parser->pts == AV_NOPTS_VALUE
                         ? MP_NOPTS_VALUE : track->av_parser->pts / tb;
                new->dts = track->av_parser->dts == AV_NOPTS_VALUE
                         ? MP_NOPTS_VALUE : track->av_parser->dts / tb;
            }
            add_packet(demuxer, stream, new);
        }
        pts = dts = AV_NOPTS_VALUE;
    }

    if (dp->len) {
        add_packet(demuxer, stream, dp);
    } else {
        talloc_free(dp);
    }
}
