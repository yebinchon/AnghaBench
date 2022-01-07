
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vertex_buffer {scalar_t__ Count; scalar_t__ VertexSizeMask; scalar_t__ Start; scalar_t__ Obj; scalar_t__ Eye; scalar_t__ Normal; } ;
struct TYPE_7__ {int Normalize; } ;
struct TYPE_8__ {int VertexTime; TYPE_1__ Transform; int ModelViewInv; scalar_t__ NeedNormals; struct vertex_buffer* VB; } ;
typedef scalar_t__ GLdouble ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int ASSERT (int) ;
 scalar_t__ VERTEX4_BIT ;
 scalar_t__ gl_time () ;
 int gl_transform_vb_part2 (TYPE_2__*,int ) ;
 int gl_xform_normals_3fv (scalar_t__,scalar_t__,int ,scalar_t__,int ) ;
 int transform_points3 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int transform_points4 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;

void gl_transform_vb_part1( GLcontext *ctx, GLboolean allDone )
{
   struct vertex_buffer *VB = ctx->VB;




   ASSERT( VB->Count>0 );




   if (VB->VertexSizeMask==VERTEX4_BIT) {
      transform_points4( ctx, VB->Count - VB->Start,
                         VB->Obj + VB->Start, VB->Eye + VB->Start );
   }
   else {
      transform_points3( ctx, VB->Count - VB->Start,
                         VB->Obj + VB->Start, VB->Eye + VB->Start );
   }


   if (ctx->NeedNormals) {
      gl_xform_normals_3fv( VB->Count - VB->Start,
                            VB->Normal + VB->Start, ctx->ModelViewInv,
                            VB->Normal + VB->Start, ctx->Transform.Normalize );
   }






   gl_transform_vb_part2( ctx, allDone );
}
