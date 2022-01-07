
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zs; int target; } ;
typedef TYPE_1__ gs_texrender_t ;


 int bfree (TYPE_1__*) ;
 int gs_texture_destroy (int ) ;
 int gs_zstencil_destroy (int ) ;

void gs_texrender_destroy(gs_texrender_t *texrender)
{
 if (texrender) {
  gs_texture_destroy(texrender->target);
  gs_zstencil_destroy(texrender->zs);
  bfree(texrender);
 }
}
