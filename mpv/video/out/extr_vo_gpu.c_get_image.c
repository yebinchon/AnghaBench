
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct gpu_priv* priv; } ;
struct mp_image {int dummy; } ;
struct gpu_priv {int renderer; } ;


 struct mp_image* gl_video_get_image (int ,int,int,int,int) ;

__attribute__((used)) static struct mp_image *get_image(struct vo *vo, int imgfmt, int w, int h,
                                  int stride_align)
{
    struct gpu_priv *p = vo->priv;

    return gl_video_get_image(p->renderer, imgfmt, w, h, stride_align);
}
