
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int EyePlaneQ; int ObjectPlaneQ; int GenModeQ; int EyePlaneR; int ObjectPlaneR; int GenModeR; int EyePlaneT; int ObjectPlaneT; int GenModeT; int EyePlaneS; int ObjectPlaneS; int GenModeS; } ;
struct TYPE_7__ {TYPE_1__ Texture; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int COPY_4V (int *,int ) ;
 int GL_EYE_PLANE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_OBJECT_PLANE ;




 int GL_TEXTURE_GEN_MODE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetTexGeniv( GLcontext *ctx,
                     GLenum coord, GLenum pname, GLint *params )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetTexGeniv" );
      return;
   }

   switch( coord ) {
      case 129:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ctx->Texture.GenModeS;
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneS );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneS );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGeniv(pname)" );
     return;
  }
  break;
      case 128:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ctx->Texture.GenModeT;
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneT );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneT );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGeniv(pname)" );
     return;
  }
  break;
      case 130:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ctx->Texture.GenModeR;
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneR );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneR );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGeniv(pname)" );
     return;
  }
  break;
      case 131:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ctx->Texture.GenModeQ;
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneQ );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneQ );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGeniv(pname)" );
     return;
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexGeniv(coord)" );
  return;
   }
}
