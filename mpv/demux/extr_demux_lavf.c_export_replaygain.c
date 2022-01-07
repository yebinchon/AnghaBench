
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sh_stream {TYPE_1__* codec; int ds; } ;
struct replaygain_data {float track_gain; float track_peak; float album_gain; float album_peak; } ;
typedef int demuxer_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ data; } ;
struct TYPE_8__ {float track_gain; double track_peak; float album_gain; double album_peak; } ;
struct TYPE_7__ {int nb_side_data; TYPE_4__* side_data; } ;
struct TYPE_6__ {struct replaygain_data* replaygain_data; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVReplayGain ;
typedef TYPE_4__ AVPacketSideData ;


 scalar_t__ AV_PKT_DATA_REPLAYGAIN ;
 float INT32_MIN ;
 int assert (int) ;
 struct replaygain_data* talloc_ptrtype (int *,struct replaygain_data*) ;

__attribute__((used)) static void export_replaygain(demuxer_t *demuxer, struct sh_stream *sh,
                              AVStream *st)
{
    for (int i = 0; i < st->nb_side_data; i++) {
        AVReplayGain *av_rgain;
        struct replaygain_data *rgain;
        AVPacketSideData *src_sd = &st->side_data[i];

        if (src_sd->type != AV_PKT_DATA_REPLAYGAIN)
            continue;

        av_rgain = (AVReplayGain*)src_sd->data;
        rgain = talloc_ptrtype(demuxer, rgain);





        if (av_rgain->track_gain != INT32_MIN && av_rgain->track_peak != 0.0) {

            rgain->track_gain = av_rgain->track_gain / 100000.0f;
            rgain->track_peak = av_rgain->track_peak / 100000.0f;

            if (av_rgain->album_gain != INT32_MIN &&
                av_rgain->album_peak != 0.0)
            {

                rgain->album_gain = av_rgain->album_gain / 100000.0f;
                rgain->album_peak = av_rgain->album_peak / 100000.0f;
            } else {

                rgain->album_gain = rgain->track_gain;
                rgain->album_peak = rgain->track_peak;
            }
        }



        assert(!sh->ds);
        sh->codec->replaygain_data = rgain;
    }
}
