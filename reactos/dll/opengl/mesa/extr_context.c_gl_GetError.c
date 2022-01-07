
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ErrorValue; } ;
typedef int GLenum ;
typedef TYPE_1__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_NO_ERROR ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 int gl_error (TYPE_1__*,int ,char*) ;

GLenum gl_GetError( GLcontext *ctx )
{
   GLenum e;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetError" );
      return GL_INVALID_OPERATION;
   }

   e = ctx->ErrorValue;
   ctx->ErrorValue = GL_NO_ERROR;
   return e;
}
