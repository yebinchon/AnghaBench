
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;
typedef scalar_t__ GLenum ;
typedef int GLcontext ;
typedef int GLboolean ;
 int GL_FALSE ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;


 scalar_t__ GL_PROXY_TEXTURE_1D ;




 scalar_t__ GL_TEXTURE_1D ;
 int GL_TRUE ;


 scalar_t__ MAX_TEXTURE_LEVELS ;
 int MAX_TEXTURE_SIZE ;
 scalar_t__ decode_internal_format (scalar_t__) ;
 int gl_error (int *,int ,char*) ;
 scalar_t__ logbase2 (scalar_t__) ;

__attribute__((used)) static GLboolean texture_1d_error_check( GLcontext *ctx, GLenum target,
                                         GLint level, GLenum internalFormat,
                                         GLenum format, GLenum type,
                                         GLint width, GLint border )
{
   GLint iformat;
   if (target!=GL_TEXTURE_1D && target!=GL_PROXY_TEXTURE_1D) {
      gl_error( ctx, GL_INVALID_ENUM, "glTexImage1D" );
      return GL_TRUE;
   }
   if (level<0 || level>=MAX_TEXTURE_LEVELS) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexImage1D(level)" );
      return GL_TRUE;
   }
   iformat = decode_internal_format( internalFormat );
   if (iformat<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexImage1D(internalFormat)" );
      return GL_TRUE;
   }
   if (border!=0 && border!=1) {
      if (target!=GL_PROXY_TEXTURE_1D) {
         gl_error( ctx, GL_INVALID_VALUE, "glTexImage1D(border)" );
      }
      return GL_TRUE;
   }
   if (width<2*border || width>2+MAX_TEXTURE_SIZE) {
      if (target!=GL_PROXY_TEXTURE_1D) {
         gl_error( ctx, GL_INVALID_VALUE, "glTexImage1D(width)" );
      }
      return GL_TRUE;
   }
   if (logbase2( width-2*border )<0) {
      gl_error( ctx, GL_INVALID_VALUE,
               "glTexImage1D(width != 2^k + 2*border)");
      return GL_TRUE;
   }
   switch (format) {
      case 138:
      case 133:
      case 136:
      case 140:
      case 143:
      case 132:
      case 141:
      case 131:
      case 142:
      case 135:
      case 134:

         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexImage1D(format)" );
         return GL_TRUE;
   }
   switch (type) {
      case 129:
      case 139:
      case 128:
      case 130:
      case 137:

         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexImage1D(type)" );
         return GL_TRUE;
   }
   return GL_FALSE;
}
