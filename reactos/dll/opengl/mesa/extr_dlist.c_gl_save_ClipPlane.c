
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* ClipPlane ) (TYPE_3__*,int ,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; int e; } ;
typedef TYPE_2__ Node ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_CLIP_PLANE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,int const*) ;

void gl_save_ClipPlane( GLcontext *ctx, GLenum plane, const GLfloat *equ )
{
   Node *n = alloc_instruction( ctx, OPCODE_CLIP_PLANE, 5 );
   if (n) {
      n[1].e = plane;
      n[2].f = equ[0];
      n[3].f = equ[1];
      n[4].f = equ[2];
      n[5].f = equ[3];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.ClipPlane)( ctx, plane, equ );
   }
}
