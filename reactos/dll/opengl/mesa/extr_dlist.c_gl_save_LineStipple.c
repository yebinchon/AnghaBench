
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* LineStipple ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int us; int i; } ;
typedef TYPE_2__ Node ;
typedef int GLushort ;
typedef int GLint ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_LINE_STIPPLE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,int ) ;

void gl_save_LineStipple( GLcontext *ctx, GLint factor, GLushort pattern )
{
   Node *n = alloc_instruction( ctx, OPCODE_LINE_STIPPLE, 2 );
   if (n) {
      n[1].i = factor;
      n[2].us = pattern;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.LineStipple)( ctx, factor, pattern );
   }
}
