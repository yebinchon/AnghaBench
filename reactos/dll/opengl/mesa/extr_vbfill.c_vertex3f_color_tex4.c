
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vertex_buffer {size_t Count; int * Edgeflag; int * TexCoord; int * Fcolor; int * Obj; } ;
struct TYPE_5__ {int EdgeFlag; int TexCoord; int ByteColor; } ;
struct TYPE_6__ {TYPE_1__ Current; struct vertex_buffer* VB; } ;
typedef size_t GLuint ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int ASSIGN_3V (int ,int ,int ,int ) ;
 int COPY_4UBV (int ,int ) ;
 int COPY_4V (int ,int ) ;
 int GL_FALSE ;
 size_t VB_MAX ;
 int gl_transform_vb_part1 (TYPE_2__*,int ) ;

__attribute__((used)) static void vertex3f_color_tex4( GLcontext *ctx,
                                 GLfloat x, GLfloat y, GLfloat z )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint count = VB->Count;

   ASSIGN_3V( VB->Obj[count], x, y, z );
   COPY_4UBV( VB->Fcolor[count], ctx->Current.ByteColor );
   COPY_4V( VB->TexCoord[count], ctx->Current.TexCoord );
   VB->Edgeflag[count] = ctx->Current.EdgeFlag;

   count++;
   VB->Count = count;
   if (count==VB_MAX) {
      gl_transform_vb_part1( ctx, GL_FALSE );
   }
}
