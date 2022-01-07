
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {scalar_t__ zsformat; int * target; int * zs; int format; void* cy; void* cx; } ;
typedef TYPE_1__ gs_texrender_t ;


 int GS_RENDER_TARGET ;
 scalar_t__ GS_ZS_NONE ;
 int * gs_texture_create (void*,void*,int ,int,int *,int ) ;
 int gs_texture_destroy (int *) ;
 int * gs_zstencil_create (void*,void*,scalar_t__) ;
 int gs_zstencil_destroy (int *) ;

__attribute__((used)) static bool texrender_resetbuffer(gs_texrender_t *texrender, uint32_t cx,
      uint32_t cy)
{
 if (!texrender)
  return 0;

 gs_texture_destroy(texrender->target);
 gs_zstencil_destroy(texrender->zs);

 texrender->target = ((void*)0);
 texrender->zs = ((void*)0);
 texrender->cx = cx;
 texrender->cy = cy;

 texrender->target = gs_texture_create(cx, cy, texrender->format, 1,
           ((void*)0), GS_RENDER_TARGET);
 if (!texrender->target)
  return 0;

 if (texrender->zsformat != GS_ZS_NONE) {
  texrender->zs = gs_zstencil_create(cx, cy, texrender->zsformat);
  if (!texrender->zs) {
   gs_texture_destroy(texrender->target);
   texrender->target = ((void*)0);

   return 0;
  }
 }

 return 1;
}
