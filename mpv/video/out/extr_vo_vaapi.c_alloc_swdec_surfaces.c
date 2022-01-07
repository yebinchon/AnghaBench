
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * swdec_surfaces; int pool; } ;


 int IMGFMT_VAAPI ;
 int MAX_OUTPUT_SURFACES ;
 int free_video_specific (struct priv*) ;
 int mp_image_pool_get (int ,int ,int,int) ;
 scalar_t__ va_surface_alloc_imgfmt (struct priv*,int ,int) ;

__attribute__((used)) static bool alloc_swdec_surfaces(struct priv *p, int w, int h, int imgfmt)
{
    free_video_specific(p);
    for (int i = 0; i < MAX_OUTPUT_SURFACES; i++) {
        p->swdec_surfaces[i] = mp_image_pool_get(p->pool, IMGFMT_VAAPI, w, h);
        if (va_surface_alloc_imgfmt(p, p->swdec_surfaces[i], imgfmt) < 0)
            return 0;
    }
    return 1;
}
