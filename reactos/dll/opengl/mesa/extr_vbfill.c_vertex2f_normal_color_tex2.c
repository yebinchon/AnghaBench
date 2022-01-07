
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vertex_buffer {size_t Count; int * Edgeflag; int * TexCoord; int * Normal; int * Fcolor; int * Obj; } ;
struct TYPE_5__ {int EdgeFlag; int TexCoord; int Normal; int ByteColor; } ;
struct TYPE_6__ {TYPE_1__ Current; struct vertex_buffer* VB; } ;
typedef size_t GLuint ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int ASSIGN_3V (int ,int ,int ,float) ;
 int COPY_2V (int ,int ) ;
 int COPY_3V (int ,int ) ;
 int COPY_4UBV (int ,int ) ;
 int GL_FALSE ;
 size_t VB_MAX ;
 int gl_transform_vb_part1 (TYPE_2__*,int ) ;

__attribute__((used)) static void vertex2f_normal_color_tex2( GLcontext *ctx, GLfloat x, GLfloat y )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint count = VB->Count;

   ASSIGN_3V( VB->Obj[count], x, y, 0.0F );
   COPY_4UBV( VB->Fcolor[count], ctx->Current.ByteColor );
   COPY_3V( VB->Normal[count], ctx->Current.Normal );
   COPY_2V( VB->TexCoord[count], ctx->Current.TexCoord );
   VB->Edgeflag[count] = ctx->Current.EdgeFlag;

   count++;
   VB->Count = count;
   if (count==VB_MAX) {
      gl_transform_vb_part1( ctx, GL_FALSE );
   }
}
