
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int hwdec_devs; struct gpu_priv* priv; } ;
struct gpu_priv {int renderer; } ;


 int gl_video_load_hwdecs_all (int ,int ) ;

__attribute__((used)) static void request_hwdec_api(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;

    gl_video_load_hwdecs_all(p->renderer, vo->hwdec_devs);
}
