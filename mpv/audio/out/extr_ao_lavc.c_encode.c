
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct priv {double aframecount; int aframesize; scalar_t__ lastpts; TYPE_4__* enc; int worst_time_base; } ;
struct encode_lavc_context {double audio_pts_offset; int lock; } ;
struct TYPE_8__ {int num; } ;
struct ao {double samplerate; int sstride; TYPE_1__ channels; int format; struct encode_lavc_context* encode_lavc_ctx; struct priv* priv; } ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {TYPE_3__* encoder; } ;
struct TYPE_10__ {int global_quality; int time_base; } ;
struct TYPE_9__ {int nb_samples; int* linesize; scalar_t__ pts; int quality; void** extended_data; int format; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 size_t AV_NUM_DATA_POINTERS ;
 int MP_WARN (struct ao*,char*,int,int) ;
 scalar_t__ af_fmt_is_planar (int ) ;
 int af_to_avformat (int ) ;
 int assert (int) ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_inv_q (int ) ;
 double av_q2d (int ) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 int encoder_encode (TYPE_4__*,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ rint (double) ;

__attribute__((used)) static void encode(struct ao *ao, double apts, void **data)
{
    struct priv *ac = ao->priv;
    struct encode_lavc_context *ectx = ao->encode_lavc_ctx;
    AVCodecContext *encoder = ac->enc->encoder;
    double realapts = ac->aframecount * (double) ac->aframesize /
                      ao->samplerate;

    ac->aframecount++;

    pthread_mutex_lock(&ectx->lock);
    if (data)
        ectx->audio_pts_offset = realapts - apts;
    pthread_mutex_unlock(&ectx->lock);

    if(data) {
        AVFrame *frame = av_frame_alloc();
        frame->format = af_to_avformat(ao->format);
        frame->nb_samples = ac->aframesize;

        size_t num_planes = af_fmt_is_planar(ao->format) ? ao->channels.num : 1;
        assert(num_planes <= AV_NUM_DATA_POINTERS);
        for (int n = 0; n < num_planes; n++)
            frame->extended_data[n] = data[n];

        frame->linesize[0] = frame->nb_samples * ao->sstride;

        frame->pts = rint(apts * av_q2d(av_inv_q(encoder->time_base)));

        int64_t frame_pts = av_rescale_q(frame->pts, encoder->time_base,
                                         ac->worst_time_base);
        if (ac->lastpts != AV_NOPTS_VALUE && frame_pts <= ac->lastpts) {


            MP_WARN(ao, "audio frame pts went backwards (%d <- %d), autofixed\n",
                    (int)frame->pts, (int)ac->lastpts);
            frame_pts = ac->lastpts + 1;
            frame->pts = av_rescale_q(frame_pts, ac->worst_time_base,
                                      encoder->time_base);
        }
        ac->lastpts = frame_pts;

        frame->quality = encoder->global_quality;
        encoder_encode(ac->enc, frame);
        av_frame_free(&frame);
    } else {
        encoder_encode(ac->enc, ((void*)0));
    }
}
