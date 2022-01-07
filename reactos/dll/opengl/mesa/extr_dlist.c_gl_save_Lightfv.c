
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Lightfv ) (TYPE_3__*,void*,void*,int const*,int) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; void* e; } ;
typedef TYPE_2__ Node ;
typedef int GLint ;
typedef int GLfloat ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 scalar_t__ OPCODE_LIGHT ;
 TYPE_2__* alloc_instruction (TYPE_3__*,scalar_t__,int) ;
 int stub1 (TYPE_3__*,void*,void*,int const*,int) ;

void gl_save_Lightfv( GLcontext *ctx, GLenum light, GLenum pname,
                      const GLfloat *params, GLint numparams )
{
   Node *n = alloc_instruction( ctx, OPCODE_LIGHT, 6 );
   if (OPCODE_LIGHT) {
      GLint i;
      n[1].e = light;
      n[2].e = pname;
      for (i=0;i<numparams;i++) {
  n[3+i].f = params[i];
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Lightfv)( ctx, light, pname, params, numparams );
   }
}
