
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* PolygonStipple ) (TYPE_3__*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* data; } ;
typedef TYPE_2__ Node ;
typedef int GLubyte ;
typedef TYPE_3__ GLcontext ;


 int MEMCPY (void*,int const*,int) ;
 int OPCODE_POLYGON_STIPPLE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 void* malloc (int) ;
 int stub1 (TYPE_3__*,int const*) ;

void gl_save_PolygonStipple( GLcontext *ctx, const GLubyte *mask )
{
   Node *n = alloc_instruction( ctx, OPCODE_POLYGON_STIPPLE, 1 );
   if (n) {
      void *data;
      n[1].data = malloc( 32 * 4 );
      data = n[1].data;
      MEMCPY( data, mask, 32 * 4 );
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.PolygonStipple)( ctx, mask );
   }
}
