
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vertex_buffer {size_t Count; size_t* Findex; int * Edgeflag; int * TexCoord; int * Fcolor; int * Normal; int * Obj; int MonoNormal; int VertexSizeMask; } ;
struct TYPE_12__ {int EdgeFlag; } ;
struct TYPE_11__ {int ColorMaterialBitmask; scalar_t__ ColorMaterialEnabled; } ;
struct TYPE_9__ {scalar_t__ Map2Color4; scalar_t__ Map1Color4; } ;
struct TYPE_13__ {TYPE_4__ Current; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Eval; struct vertex_buffer* VB; } ;
struct TYPE_10__ {int const InvRedScale; int const InvGreenScale; int const InvBlueScale; int const InvAlphaScale; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLfloat ;
typedef TYPE_5__ GLcontext ;


 int COPY_3V (int ,int const*) ;
 int COPY_4UBV (int ,int const*) ;
 int COPY_4V (int ,int const*) ;
 int GL_FALSE ;
 size_t VB_MAX ;
 int VERTEX4_BIT ;
 int gl_set_material (TYPE_5__*,int ,int*) ;
 int gl_transform_vb_part1 (TYPE_5__*,int ) ;

void gl_eval_vertex( GLcontext *ctx,
                     const GLfloat vertex[4], const GLfloat normal[3],
       const GLubyte color[4],
                     GLuint index,
                     const GLfloat texcoord[4] )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint count = VB->Count;

   VB->VertexSizeMask = VERTEX4_BIT;
   VB->MonoNormal = GL_FALSE;
   COPY_4V( VB->Obj[count], vertex );
   COPY_3V( VB->Normal[count], normal );
   COPY_4UBV( VB->Fcolor[count], color );
   VB->Findex[count] = index;
   COPY_4V( VB->TexCoord[count], texcoord );
   VB->Edgeflag[count] = ctx->Current.EdgeFlag;

   count++;
   VB->Count = count;
   if (count==VB_MAX) {
      gl_transform_vb_part1( ctx, GL_FALSE );
   }
}
