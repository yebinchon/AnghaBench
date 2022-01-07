
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vertex_buffer {scalar_t__ Count; scalar_t__ Start; } ;
struct pixel_buffer {scalar_t__ count; scalar_t__ primitive; } ;
struct TYPE_8__ {int (* End ) (TYPE_2__*) ;} ;
struct TYPE_9__ {scalar_t__ Primitive; int BeginEndCount; int BeginEndTime; TYPE_1__ Driver; struct vertex_buffer* VB; struct pixel_buffer* PB; } ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ GL_BITMAP ;
 int GL_INVALID_OPERATION ;
 int GL_TRUE ;
 scalar_t__ begin_time ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_flush_pb (TYPE_2__*) ;
 scalar_t__ gl_time () ;
 int gl_transform_vb_part1 (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;

void gl_End( GLcontext *ctx )
{
   struct pixel_buffer *PB = ctx->PB;
   struct vertex_buffer *VB = ctx->VB;

   if (ctx->Primitive==GL_BITMAP) {

      gl_error( ctx, GL_INVALID_OPERATION, "glEnd" );
      return;
   }

   if (VB->Count > VB->Start) {
      gl_transform_vb_part1( ctx, GL_TRUE );
   }
   if (PB->count>0) {
      gl_flush_pb(ctx);
   }

   if (ctx->Driver.End) {
      (*ctx->Driver.End)(ctx);
   }

   PB->primitive = ctx->Primitive = GL_BITMAP;





}
