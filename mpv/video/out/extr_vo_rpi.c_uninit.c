
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int display_mutex; int display_cond; scalar_t__ renderer; scalar_t__ update; int next_image; } ;


 int destroy_dispmanx (struct vo*) ;
 int mmal_component_release (scalar_t__) ;
 int mmal_vc_deinit () ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (int ) ;
 int tv_callback ;
 int vc_dispmanx_update_submit_sync (scalar_t__) ;
 int vc_tv_unregister_callback_full (int ,struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;

    vc_tv_unregister_callback_full(tv_callback, vo);

    talloc_free(p->next_image);

    destroy_dispmanx(vo);

    if (p->update)
        vc_dispmanx_update_submit_sync(p->update);

    if (p->renderer)
        mmal_component_release(p->renderer);

    mmal_vc_deinit();

    pthread_cond_destroy(&p->display_cond);
    pthread_mutex_destroy(&p->display_mutex);
}
