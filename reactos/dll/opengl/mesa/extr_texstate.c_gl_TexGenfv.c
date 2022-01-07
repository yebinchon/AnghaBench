
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int GenModeS; int GenModeT; int GenModeR; int GenModeQ; int EyePlaneQ; int * ObjectPlaneQ; int EyePlaneR; int * ObjectPlaneR; int EyePlaneT; int * ObjectPlaneT; int EyePlaneS; int * ObjectPlaneS; } ;
struct TYPE_8__ {int NewState; int ModelViewInv; TYPE_1__ Texture; int NewModelViewMatrix; } ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int GL_EYE_LINEAR ;
 int GL_EYE_PLANE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_OBJECT_LINEAR ;
 int GL_OBJECT_PLANE ;



 int GL_SPHERE_MAP ;

 int GL_TEXTURE_GEN_MODE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_TEXTURING ;
 int gl_analyze_modelview_matrix (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_transform_vector (int ,int const*,int ) ;

void gl_TexGenfv( GLcontext *ctx,
                  GLenum coord, GLenum pname, const GLfloat *params )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glTexGenfv" );
      return;
   }

   switch( coord ) {
      case 129:
         if (pname==GL_TEXTURE_GEN_MODE) {
     GLenum mode = (GLenum) (GLint) *params;
     if (mode==GL_OBJECT_LINEAR ||
  mode==GL_EYE_LINEAR ||
  mode==GL_SPHERE_MAP) {
        ctx->Texture.GenModeS = mode;
     }
     else {
        gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(param)" );
        return;
     }
  }
  else if (pname==GL_OBJECT_PLANE) {
     ctx->Texture.ObjectPlaneS[0] = params[0];
     ctx->Texture.ObjectPlaneS[1] = params[1];
     ctx->Texture.ObjectPlaneS[2] = params[2];
     ctx->Texture.ObjectPlaneS[3] = params[3];
  }
  else if (pname==GL_EYE_PLANE) {

            if (ctx->NewModelViewMatrix) {
               gl_analyze_modelview_matrix(ctx);
            }
            gl_transform_vector( ctx->Texture.EyePlaneS, params,
                                 ctx->ModelViewInv );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(pname)" );
     return;
  }
  break;
      case 128:
         if (pname==GL_TEXTURE_GEN_MODE) {
     GLenum mode = (GLenum) (GLint) *params;
     if (mode==GL_OBJECT_LINEAR ||
  mode==GL_EYE_LINEAR ||
  mode==GL_SPHERE_MAP) {
        ctx->Texture.GenModeT = mode;
     }
     else {
        gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(param)" );
        return;
     }
  }
  else if (pname==GL_OBJECT_PLANE) {
     ctx->Texture.ObjectPlaneT[0] = params[0];
     ctx->Texture.ObjectPlaneT[1] = params[1];
     ctx->Texture.ObjectPlaneT[2] = params[2];
     ctx->Texture.ObjectPlaneT[3] = params[3];
  }
  else if (pname==GL_EYE_PLANE) {

            if (ctx->NewModelViewMatrix) {
               gl_analyze_modelview_matrix(ctx);
            }
            gl_transform_vector( ctx->Texture.EyePlaneT, params,
                                 ctx->ModelViewInv );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(pname)" );
     return;
  }
  break;
      case 130:
         if (pname==GL_TEXTURE_GEN_MODE) {
     GLenum mode = (GLenum) (GLint) *params;
     if (mode==GL_OBJECT_LINEAR ||
  mode==GL_EYE_LINEAR) {
        ctx->Texture.GenModeR = mode;
     }
     else {
        gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(param)" );
        return;
     }
  }
  else if (pname==GL_OBJECT_PLANE) {
     ctx->Texture.ObjectPlaneR[0] = params[0];
     ctx->Texture.ObjectPlaneR[1] = params[1];
     ctx->Texture.ObjectPlaneR[2] = params[2];
     ctx->Texture.ObjectPlaneR[3] = params[3];
  }
  else if (pname==GL_EYE_PLANE) {

            if (ctx->NewModelViewMatrix) {
               gl_analyze_modelview_matrix(ctx);
            }
            gl_transform_vector( ctx->Texture.EyePlaneR, params,
                                 ctx->ModelViewInv );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(pname)" );
     return;
  }
  break;
      case 131:
         if (pname==GL_TEXTURE_GEN_MODE) {
     GLenum mode = (GLenum) (GLint) *params;
     if (mode==GL_OBJECT_LINEAR ||
  mode==GL_EYE_LINEAR) {
        ctx->Texture.GenModeQ = mode;
     }
     else {
        gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(param)" );
        return;
     }
  }
  else if (pname==GL_OBJECT_PLANE) {
     ctx->Texture.ObjectPlaneQ[0] = params[0];
     ctx->Texture.ObjectPlaneQ[1] = params[1];
     ctx->Texture.ObjectPlaneQ[2] = params[2];
     ctx->Texture.ObjectPlaneQ[3] = params[3];
  }
  else if (pname==GL_EYE_PLANE) {

            if (ctx->NewModelViewMatrix) {
               gl_analyze_modelview_matrix(ctx);
            }
            gl_transform_vector( ctx->Texture.EyePlaneQ, params,
                                 ctx->ModelViewInv );
  }
  else {
     gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(pname)" );
     return;
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexGenfv(coord)" );
  return;
   }

   ctx->NewState |= NEW_TEXTURING;
}
