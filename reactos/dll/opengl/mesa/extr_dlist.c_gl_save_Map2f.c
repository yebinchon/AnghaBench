
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Map2f ) (TYPE_3__*,int ,void*,void*,void*,void*,void*,void*,void*,void*,void* const*,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* data; void* i; void* f; int e; } ;
typedef TYPE_2__ Node ;
typedef void* GLint ;
typedef void* GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef int GLboolean ;


 int GL_TRUE ;
 int OPCODE_MAP2 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,void*,void*,void*,void*,void*,void*,void*,void*,void* const*,int ) ;

void gl_save_Map2f( GLcontext *ctx, GLenum target,
                    GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
                    GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
                    const GLfloat *points, GLboolean retain )
{
   Node *n = alloc_instruction( ctx, OPCODE_MAP2, 10 );
   if (n) {
      n[1].e = target;
      n[2].f = u1;
      n[3].f = u2;
      n[4].f = v1;
      n[5].f = v2;
      n[6].i = ustride;
      n[7].i = vstride;
      n[8].i = uorder;
      n[9].i = vorder;
      n[10].data = (void *) points;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Map2f)( ctx, target,
                        u1, u2, ustride, uorder,
                        v1, v2, vstride, vorder, points, GL_TRUE );
   }
}
