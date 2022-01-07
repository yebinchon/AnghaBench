
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vertex_buffer {scalar_t__ Start; scalar_t__ Bindex; scalar_t__ Eye; scalar_t__ Count; scalar_t__ Findex; scalar_t__ Bcolor; scalar_t__ Fcolor; } ;
struct TYPE_7__ {scalar_t__ LightTwoSide; TYPE_1__* Visual; struct vertex_buffer* VB; } ;
struct TYPE_6__ {scalar_t__ RGBAflag; } ;
typedef TYPE_2__ GLcontext ;


 int gl_fog_color_vertices (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int gl_fog_index_vertices (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void fog_vertices( GLcontext *ctx )
{
   struct vertex_buffer *VB = ctx->VB;

   if (ctx->Visual->RGBAflag) {

      gl_fog_color_vertices( ctx, VB->Count - VB->Start,
                             VB->Eye + VB->Start,
                             VB->Fcolor + VB->Start );
      if (ctx->LightTwoSide) {
         gl_fog_color_vertices( ctx, VB->Count - VB->Start,
                                VB->Eye + VB->Start,
                                VB->Bcolor + VB->Start );
      }
   }
   else {

      gl_fog_index_vertices( ctx, VB->Count - VB->Start,
                             VB->Eye + VB->Start,
                             VB->Findex + VB->Start );
      if (ctx->LightTwoSide) {
         gl_fog_index_vertices( ctx, VB->Count - VB->Start,
                                VB->Eye + VB->Start,
                                VB->Bindex + VB->Start );
      }
   }
}
