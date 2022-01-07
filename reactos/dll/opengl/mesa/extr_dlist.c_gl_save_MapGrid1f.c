
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* MapGrid1f ) (TYPE_3__*,int ,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* f; int i; } ;
typedef TYPE_2__ Node ;
typedef int GLint ;
typedef void* GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_MAPGRID1 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,void*,void*) ;

void gl_save_MapGrid1f( GLcontext *ctx, GLint un, GLfloat u1, GLfloat u2 )
{
   Node *n = alloc_instruction( ctx, OPCODE_MAPGRID1, 3 );
   if (n) {
      n[1].i = un;
      n[2].f = u1;
      n[3].f = u2;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.MapGrid1f)( ctx, un, u1, u2 );
   }
}
