
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ RenderMode; } ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef TYPE_1__ GLcontext ;


 int FEEDBACK_TOKEN (TYPE_1__*,int ) ;
 scalar_t__ GL_FEEDBACK ;
 int GL_INVALID_OPERATION ;
 scalar_t__ GL_PASS_THROUGH_TOKEN ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 int gl_error (TYPE_1__*,int ,char*) ;

void gl_PassThrough( GLcontext *ctx, GLfloat token )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPassThrough" );
      return;
   }

   if (ctx->RenderMode==GL_FEEDBACK) {
      FEEDBACK_TOKEN( ctx, (GLfloat) (GLint) GL_PASS_THROUGH_TOKEN );
      FEEDBACK_TOKEN( ctx, token );
   }
}
