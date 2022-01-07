
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sd_ass_priv {int duration_unknown; scalar_t__ converter; TYPE_3__* ass_track; } ;
struct sd {TYPE_2__* opts; struct sd_ass_priv* priv; } ;
struct demux_packet {scalar_t__ pos; int duration; char* buffer; int len; int pts; } ;
struct TYPE_7__ {int n_events; int event_format; TYPE_1__* events; } ;
struct TYPE_6__ {scalar_t__ sub_filter_SDH; int sub_clear_on_seek; } ;
struct TYPE_5__ {int Duration; int Start; } ;
typedef TYPE_3__ ASS_Track ;


 int MP_WARN (struct sd*,char*) ;
 double UINT32_MAX ;
 int UNKNOWN_DURATION ;
 int ass_process_chunk (TYPE_3__*,char*,int,int ,int ) ;
 scalar_t__ check_packet_seen (struct sd*,scalar_t__) ;
 char* filter_SDH (struct sd*,int ,int,char*,int) ;
 char** lavc_conv_decode (scalar_t__,struct demux_packet*,double*,double*) ;
 int llrint (int) ;
 int strlen (char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static void decode(struct sd *sd, struct demux_packet *packet)
{
    struct sd_ass_priv *ctx = sd->priv;
    ASS_Track *track = ctx->ass_track;
    if (ctx->converter) {
        if (!sd->opts->sub_clear_on_seek && packet->pos >= 0 &&
            check_packet_seen(sd, packet->pos))
            return;

        double sub_pts = 0;
        double sub_duration = 0;
        char **r = lavc_conv_decode(ctx->converter, packet, &sub_pts,
                                    &sub_duration);
        if (packet->duration < 0 || sub_duration == UINT32_MAX) {
            if (!ctx->duration_unknown) {
                MP_WARN(sd, "Subtitle with unknown duration.\n");
                ctx->duration_unknown = 1;
            }
            sub_duration = UNKNOWN_DURATION;
        }

        for (int n = 0; r && r[n]; n++) {
            char *ass_line = r[n];
            if (sd->opts->sub_filter_SDH)
                ass_line = filter_SDH(sd, track->event_format, 0, ass_line, 0);
            if (ass_line)
                ass_process_chunk(track, ass_line, strlen(ass_line),
                                  llrint(sub_pts * 1000),
                                  llrint(sub_duration * 1000));
            if (sd->opts->sub_filter_SDH)
                talloc_free(ass_line);
        }
        if (ctx->duration_unknown) {
            for (int n = 0; n < track->n_events - 1; n++) {
                if (track->events[n].Duration == UNKNOWN_DURATION * 1000) {
                    track->events[n].Duration = track->events[n + 1].Start -
                                                track->events[n].Start;
                }
            }
        }
    } else {


        char *ass_line = packet->buffer;
        int ass_len = packet->len;
        if (sd->opts->sub_filter_SDH) {
            ass_line = filter_SDH(sd, track->event_format, 1, ass_line, ass_len);
            ass_len = ass_line ? strlen(ass_line) : 0;
        }
        if (ass_line)
            ass_process_chunk(track, ass_line, ass_len,
                              llrint(packet->pts * 1000),
                              llrint(packet->duration * 1000));
        if (sd->opts->sub_filter_SDH)
            talloc_free(ass_line);
    }
}
