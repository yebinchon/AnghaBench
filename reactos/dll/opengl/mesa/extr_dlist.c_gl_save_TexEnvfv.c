
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* TexEnvfv ) (TYPE_3__*,void*,void*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; void* e; } ;
typedef TYPE_2__ Node ;
typedef int GLfloat ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_TEXENV ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,int const*) ;

void gl_save_TexEnvfv( GLcontext *ctx,
                       GLenum target, GLenum pname, const GLfloat *params )
{
   Node *n = alloc_instruction( ctx, OPCODE_TEXENV, 6 );
   if (n) {
      n[1].e = target;
      n[2].e = pname;
      n[3].f = params[0];
      n[4].f = params[1];
      n[5].f = params[2];
      n[6].f = params[3];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.TexEnvfv)( ctx, target, pname, params );
   }
}
