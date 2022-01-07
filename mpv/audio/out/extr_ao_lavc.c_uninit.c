
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {double expected_next_pts; TYPE_2__* enc; int shutdown; } ;
struct encode_lavc_context {int lock; scalar_t__ discontinuity_pts_offset; } ;
struct ao {struct encode_lavc_context* encode_lavc_ctx; struct priv* priv; } ;
struct TYPE_4__ {TYPE_1__* options; } ;
struct TYPE_3__ {int rawts; } ;


 int encode (struct ao*,double,int *) ;
 scalar_t__ encoder_get_offset (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *ac = ao->priv;
    struct encode_lavc_context *ectx = ao->encode_lavc_ctx;

    if (!ac->shutdown) {
        double outpts = ac->expected_next_pts;

        pthread_mutex_lock(&ectx->lock);
        if (!ac->enc->options->rawts)
            outpts += ectx->discontinuity_pts_offset;
        pthread_mutex_unlock(&ectx->lock);

        outpts += encoder_get_offset(ac->enc);
        encode(ao, outpts, ((void*)0));
    }
}
