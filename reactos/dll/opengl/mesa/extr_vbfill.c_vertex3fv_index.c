
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vertex_buffer {size_t Count; int * Edgeflag; int * Findex; int * Obj; } ;
struct TYPE_5__ {int EdgeFlag; int Index; } ;
struct TYPE_6__ {TYPE_1__ Current; struct vertex_buffer* VB; } ;
typedef size_t GLuint ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int COPY_3V (int ,int const*) ;
 int GL_FALSE ;
 size_t VB_MAX ;
 int gl_transform_vb_part1 (TYPE_2__*,int ) ;

__attribute__((used)) static void vertex3fv_index( GLcontext *ctx, const GLfloat v[3] )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint count = VB->Count;

   COPY_3V( VB->Obj[count], v );
   VB->Findex[count] = ctx->Current.Index;
   VB->Edgeflag[count] = ctx->Current.EdgeFlag;

   count++;
   VB->Count = count;
   if (count==VB_MAX) {
      gl_transform_vb_part1( ctx, GL_FALSE );
   }
}
