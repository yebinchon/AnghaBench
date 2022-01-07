
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Map1f ) (TYPE_3__*,int ,void*,void*,void*,void*,void* const*,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* data; void* i; void* f; int e; } ;
typedef TYPE_2__ Node ;
typedef void* GLint ;
typedef void* GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef int GLboolean ;


 int GL_TRUE ;
 int OPCODE_MAP1 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,void*,void*,void*,void*,void* const*,int ) ;

void gl_save_Map1f( GLcontext *ctx,
                   GLenum target, GLfloat u1, GLfloat u2, GLint stride,
     GLint order, const GLfloat *points, GLboolean retain )
{
   Node *n = alloc_instruction( ctx, OPCODE_MAP1, 6 );
   if (n) {
      n[1].e = target;
      n[2].f = u1;
      n[3].f = u2;
      n[4].i = stride;
      n[5].i = order;
      n[6].data = (void *) points;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Map1f)( ctx, target, u1, u2, stride, order, points, GL_TRUE );
   }
}
