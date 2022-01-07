
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int log; struct priv* priv; } ;
struct TYPE_2__ {int log; } ;
struct priv {int renderer; int display_cond; int display_mutex; TYPE_1__ egl; scalar_t__ layer; scalar_t__ osd_layer; scalar_t__ video_layer; scalar_t__ background_layer; } ;


 int MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ;
 int MP_FATAL (struct vo*,char*) ;
 int bcm_host_init () ;
 scalar_t__ mmal_component_create (int ,int *) ;
 scalar_t__ mmal_vc_init () ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ recreate_dispmanx (struct vo*) ;
 int tv_callback ;
 int uninit (struct vo*) ;
 scalar_t__ update_display_size (struct vo*) ;
 int vc_tv_register_callback (int ,struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->background_layer = p->layer;
    p->video_layer = p->layer + 1;
    p->osd_layer = p->layer + 2;

    p->egl.log = vo->log;

    bcm_host_init();

    if (mmal_vc_init()) {
        MP_FATAL(vo, "Could not initialize MMAL.\n");
        return -1;
    }

    pthread_mutex_init(&p->display_mutex, ((void*)0));
    pthread_cond_init(&p->display_cond, ((void*)0));

    if (recreate_dispmanx(vo) < 0)
        goto fail;

    if (update_display_size(vo) < 0)
        goto fail;

    if (mmal_component_create(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &p->renderer))
    {
        MP_FATAL(vo, "Could not create MMAL renderer.\n");
        goto fail;
    }

    vc_tv_register_callback(tv_callback, vo);

    return 0;

fail:
    uninit(vo);
    return -1;
}
