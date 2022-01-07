
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ visible_surface; scalar_t__ output_surface; int * output_surfaces; } ;


 int MAX_OUTPUT_SURFACES ;
 int mp_image_unrefp (int *) ;

__attribute__((used)) static void flush_output_surfaces(struct priv *p)
{
    for (int n = 0; n < MAX_OUTPUT_SURFACES; n++)
        mp_image_unrefp(&p->output_surfaces[n]);
    p->output_surface = 0;
    p->visible_surface = 0;
}
