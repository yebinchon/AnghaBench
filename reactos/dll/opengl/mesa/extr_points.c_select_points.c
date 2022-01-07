
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vertex_buffer {scalar_t__* ClipMask; int** Win; } ;
struct TYPE_4__ {struct vertex_buffer* VB; } ;
typedef size_t GLuint ;
typedef TYPE_1__ GLcontext ;


 int DEPTH_SCALE ;
 int gl_update_hitflag (TYPE_1__*,int) ;

__attribute__((used)) static void select_points( GLcontext *ctx, GLuint first, GLuint last )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint i;

   for (i=first;i<=last;i++) {
      if (VB->ClipMask[i]==0) {
         gl_update_hitflag( ctx, VB->Win[i][2] / DEPTH_SCALE );
      }
   }
}
