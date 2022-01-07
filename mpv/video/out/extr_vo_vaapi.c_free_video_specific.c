
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ pool; int * swdec_surfaces; int black_surface; } ;


 int MAX_OUTPUT_SURFACES ;
 int flush_output_surfaces (struct priv*) ;
 int mp_image_pool_clear (scalar_t__) ;
 int mp_image_unrefp (int *) ;

__attribute__((used)) static void free_video_specific(struct priv *p)
{
    flush_output_surfaces(p);

    mp_image_unrefp(&p->black_surface);

    for (int n = 0; n < MAX_OUTPUT_SURFACES; n++)
        mp_image_unrefp(&p->swdec_surfaces[n]);

    if (p->pool)
        mp_image_pool_clear(p->pool);
}
