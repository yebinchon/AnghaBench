
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MapGrid1un; void* MapGrid1u2; void* MapGrid1u1; } ;
struct TYPE_7__ {TYPE_1__ Eval; } ;
typedef int GLint ;
typedef void* GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_MapGrid1f( GLcontext* ctx, GLint un, GLfloat u1, GLfloat u2 )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glMapGrid1f" );
      return;
   }
   if (un<1) {
      gl_error( ctx, GL_INVALID_VALUE, "glMapGrid1f" );
      return;
   }
   ctx->Eval.MapGrid1un = un;
   ctx->Eval.MapGrid1u1 = u1;
   ctx->Eval.MapGrid1u2 = u2;
}
