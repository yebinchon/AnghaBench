
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gl_texture_object {int MinFilter; int MagFilter; int WrapS; int WrapT; int WrapR; void* Dirty; void** BorderColor; } ;
struct TYPE_8__ {int (* TexParameter ) (TYPE_3__*,int,struct gl_texture_object*,int,double const*) ;} ;
struct TYPE_7__ {void* AnyDirty; struct gl_texture_object* Current2D; struct gl_texture_object* Current1D; } ;
struct TYPE_9__ {TYPE_2__ Driver; TYPE_1__ Texture; int NewState; } ;
typedef int GLint ;
typedef double GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 void* CLAMP (int ,int ,int) ;
 int GL_CLAMP ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;
 int GL_LINEAR ;
 int GL_LINEAR_MIPMAP_LINEAR ;
 int GL_LINEAR_MIPMAP_NEAREST ;
 int GL_NEAREST ;
 int GL_NEAREST_MIPMAP_LINEAR ;
 int GL_NEAREST_MIPMAP_NEAREST ;
 int GL_REPEAT ;
 void* GL_TRUE ;
 int NEW_TEXTURING ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int stub1 (TYPE_3__*,int,struct gl_texture_object*,int,double const*) ;

void gl_TexParameterfv( GLcontext *ctx,
                        GLenum target, GLenum pname, const GLfloat *params )
{
   GLenum eparam = (GLenum) (GLint) params[0];
   struct gl_texture_object *texObj;

   switch (target) {
      case 135:
         texObj = ctx->Texture.Current1D;
         break;
      case 134:
         texObj = ctx->Texture.Current2D;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexParameter(target)" );
         return;
   }

   switch (pname) {
      case 131:
         if (eparam==GL_NEAREST || eparam==GL_LINEAR
             || eparam==GL_NEAREST_MIPMAP_NEAREST
             || eparam==GL_LINEAR_MIPMAP_NEAREST
             || eparam==GL_NEAREST_MIPMAP_LINEAR
             || eparam==GL_LINEAR_MIPMAP_LINEAR) {
            texObj->MinFilter = eparam;
            ctx->NewState |= NEW_TEXTURING;
         }
         else {
            gl_error( ctx, GL_INVALID_VALUE, "glTexParameter(param)" );
            return;
         }
         break;
      case 132:
         if (eparam==GL_NEAREST || eparam==GL_LINEAR) {
            texObj->MagFilter = eparam;
            ctx->NewState |= NEW_TEXTURING;
         }
         else {
            gl_error( ctx, GL_INVALID_VALUE, "glTexParameter(param)" );
            return;
         }
         break;
      case 129:
         if (eparam==GL_CLAMP || eparam==GL_REPEAT) {
            texObj->WrapS = eparam;
         }
         else {
            gl_error( ctx, GL_INVALID_VALUE, "glTexParameter(param)" );
            return;
         }
         break;
      case 128:
         if (eparam==GL_CLAMP || eparam==GL_REPEAT) {
            texObj->WrapT = eparam;
         }
         else {
            gl_error( ctx, GL_INVALID_VALUE, "glTexParameter(param)" );
            return;
         }
         break;
      case 130:
         if (eparam==GL_CLAMP || eparam==GL_REPEAT) {
            texObj->WrapR = eparam;
         }
         else {
            gl_error( ctx, GL_INVALID_VALUE, "glTexParameter(param)" );
         }
         break;
      case 133:
         texObj->BorderColor[0] = CLAMP((GLint)(params[0]*255.0), 0, 255);
         texObj->BorderColor[1] = CLAMP((GLint)(params[1]*255.0), 0, 255);
         texObj->BorderColor[2] = CLAMP((GLint)(params[2]*255.0), 0, 255);
         texObj->BorderColor[3] = CLAMP((GLint)(params[3]*255.0), 0, 255);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexParameter(pname)" );
         return;
   }

   texObj->Dirty = GL_TRUE;
   ctx->Texture.AnyDirty = GL_TRUE;

   if (ctx->Driver.TexParameter) {
      (*ctx->Driver.TexParameter)( ctx, target, texObj, pname, params );
   }
}
