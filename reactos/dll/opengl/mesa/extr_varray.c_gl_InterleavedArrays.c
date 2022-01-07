
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLubyte ;
typedef int GLsizei ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLcontext ;
typedef scalar_t__ GLboolean ;






 int GL_COLOR_ARRAY ;
 int GL_EDGE_FLAG_ARRAY ;
 scalar_t__ GL_FALSE ;
 int GL_FLOAT ;
 int GL_INDEX_ARRAY ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;

 int GL_NORMAL_ARRAY ;







 int GL_TEXTURE_COORD_ARRAY ;
 scalar_t__ GL_TRUE ;
 int GL_UNSIGNED_BYTE ;


 int GL_VERTEX_ARRAY ;
 int gl_ColorPointer (int *,int,int,int,int *) ;
 int gl_DisableClientState (int *,int ) ;
 int gl_EnableClientState (int *,int ) ;
 int gl_NormalPointer (int *,int,int,int *) ;
 int gl_TexCoordPointer (int *,int,int,int,int const*) ;
 int gl_VertexPointer (int *,int,int,int,int *) ;
 int gl_error (int *,int ,char*) ;

void gl_InterleavedArrays( GLcontext *ctx,
                           GLenum format, GLsizei stride,
                           const GLvoid *pointer )
{
   GLboolean tflag, cflag, nflag;
   GLint tcomps, ccomps, vcomps;
   GLenum ctype;
   GLint coffset, noffset, voffset;
   GLint defstride;
   GLint c, f;

   f = sizeof(GLfloat);
   c = f * ((4*sizeof(GLubyte) + (f-1)) / f);

   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glInterleavedArrays(stride)" );
      return;
   }

   switch (format) {
      case 129:
         tflag = GL_FALSE; cflag = GL_FALSE; nflag = GL_FALSE;
         tcomps = 0; ccomps = 0; vcomps = 2;
         voffset = 0;
         defstride = 2*f;
         break;
      case 128:
         tflag = GL_FALSE; cflag = GL_FALSE; nflag = GL_FALSE;
         tcomps = 0; ccomps = 0; vcomps = 3;
         voffset = 0;
         defstride = 3*f;
         break;
      case 139:
         tflag = GL_FALSE; cflag = GL_TRUE; nflag = GL_FALSE;
         tcomps = 0; ccomps = 4; vcomps = 2;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 0;
         voffset = c;
         defstride = c + 2*f;
         break;
      case 138:
         tflag = GL_FALSE; cflag = GL_TRUE; nflag = GL_FALSE;
         tcomps = 0; ccomps = 4; vcomps = 3;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 0;
         voffset = c;
         defstride = c + 3*f;
         break;
      case 141:
         tflag = GL_FALSE; cflag = GL_TRUE; nflag = GL_FALSE;
         tcomps = 0; ccomps = 3; vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 0;
         voffset = 3*f;
         defstride = 6*f;
         break;
      case 137:
         tflag = GL_FALSE; cflag = GL_FALSE; nflag = GL_TRUE;
         tcomps = 0; ccomps = 0; vcomps = 3;
         noffset = 0;
         voffset = 3*f;
         defstride = 6*f;
         break;
      case 140:
         tflag = GL_FALSE; cflag = GL_TRUE; nflag = GL_TRUE;
         tcomps = 0; ccomps = 4; vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 0;
         noffset = 4*f;
         voffset = 7*f;
         defstride = 10*f;
         break;
      case 132:
         tflag = GL_TRUE; cflag = GL_FALSE; nflag = GL_FALSE;
         tcomps = 2; ccomps = 0; vcomps = 3;
         voffset = 2*f;
         defstride = 5*f;
         break;
      case 130:
         tflag = GL_TRUE; cflag = GL_FALSE; nflag = GL_FALSE;
         tcomps = 4; ccomps = 0; vcomps = 4;
         voffset = 4*f;
         defstride = 8*f;
         break;
      case 134:
         tflag = GL_TRUE; cflag = GL_TRUE; nflag = GL_FALSE;
         tcomps = 2; ccomps = 4; vcomps = 3;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 2*f;
         voffset = c+2*f;
         defstride = c+5*f;
         break;
      case 136:
         tflag = GL_TRUE; cflag = GL_TRUE; nflag = GL_FALSE;
         tcomps = 2; ccomps = 3; vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 2*f;
         voffset = 5*f;
         defstride = 8*f;
         break;
      case 133:
         tflag = GL_TRUE; cflag = GL_FALSE; nflag = GL_TRUE;
         tcomps = 2; ccomps = 0; vcomps = 3;
         noffset = 2*f;
         voffset = 5*f;
         defstride = 8*f;
         break;
      case 135:
         tflag = GL_TRUE; cflag = GL_TRUE; nflag = GL_TRUE;
         tcomps = 2; ccomps = 4; vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 2*f;
         noffset = 6*f;
         voffset = 9*f;
         defstride = 12*f;
         break;
      case 131:
         tflag = GL_TRUE; cflag = GL_TRUE; nflag = GL_TRUE;
         tcomps = 4; ccomps = 4; vcomps = 4;
         ctype = GL_FLOAT;
         coffset = 4*f;
         noffset = 8*f;
         voffset = 11*f;
         defstride = 15*f;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glInterleavedArrays(format)" );
         return;
   }

   if (stride==0) {
      stride = defstride;
   }

   gl_DisableClientState( ctx, GL_EDGE_FLAG_ARRAY );
   gl_DisableClientState( ctx, GL_INDEX_ARRAY );

   if (tflag) {
      gl_EnableClientState( ctx, GL_TEXTURE_COORD_ARRAY );
      gl_TexCoordPointer( ctx, tcomps, GL_FLOAT, stride, pointer );
   }
   else {
      gl_DisableClientState( ctx, GL_TEXTURE_COORD_ARRAY );
   }

   if (cflag) {
      gl_EnableClientState( ctx, GL_COLOR_ARRAY );
      gl_ColorPointer( ctx, ccomps, ctype, stride,
                       (GLubyte*) pointer + coffset );
   }
   else {
      gl_DisableClientState( ctx, GL_COLOR_ARRAY );
   }

   if (nflag) {
      gl_EnableClientState( ctx, GL_NORMAL_ARRAY );
      gl_NormalPointer( ctx, GL_FLOAT, stride,
                        (GLubyte*) pointer + noffset );
   }
   else {
      gl_DisableClientState( ctx, GL_NORMAL_ARRAY );
   }

   gl_EnableClientState( ctx, GL_VERTEX_ARRAY );
   gl_VertexPointer( ctx, vcomps, GL_FLOAT, stride,
                     (GLubyte *) pointer + voffset );
}
