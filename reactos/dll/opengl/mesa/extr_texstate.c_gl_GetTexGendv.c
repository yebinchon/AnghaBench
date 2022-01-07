
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int EyePlaneQ; int ObjectPlaneQ; int GenModeQ; int EyePlaneR; int ObjectPlaneR; int GenModeR; int EyePlaneT; int ObjectPlaneT; int GenModeT; int EyePlaneS; int ObjectPlaneS; int GenModeS; } ;
struct TYPE_7__ {TYPE_1__ Texture; } ;
typedef int GLenum ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;


 int COPY_4V (int *,int ) ;
 int ENUM_TO_DOUBLE (int ) ;
 int GL_EYE_PLANE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_OBJECT_PLANE ;




 int GL_TEXTURE_GEN_MODE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetTexGendv( GLcontext *ctx,
                     GLenum coord, GLenum pname, GLdouble *params )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetTexGendv" );
      return;
   }

   switch( coord ) {
      case 129:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ENUM_TO_DOUBLE(ctx->Texture.GenModeS);
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneS );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneS );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
     return;
  }
  break;
      case 128:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ENUM_TO_DOUBLE(ctx->Texture.GenModeT);
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneT );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneT );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
     return;
  }
  break;
      case 130:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ENUM_TO_DOUBLE(ctx->Texture.GenModeR);
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneR );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneR );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
     return;
  }
  break;
      case 131:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = ENUM_TO_DOUBLE(ctx->Texture.GenModeQ);
  }
  else if (pname==GL_OBJECT_PLANE) {
            COPY_4V( params, ctx->Texture.ObjectPlaneQ );
  }
  else if (pname==GL_EYE_PLANE) {
            COPY_4V( params, ctx->Texture.EyePlaneQ );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
     return;
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetTexGendv(coord)" );
  return;
   }
}
