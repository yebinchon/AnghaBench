
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLbyte ;
__attribute__((used)) static GLuint translate_id( GLsizei n, GLenum type, const GLvoid *list )
{
   GLbyte *bptr;
   GLubyte *ubptr;
   GLshort *sptr;
   GLushort *usptr;
   GLint *iptr;
   GLuint *uiptr;
   GLfloat *fptr;

   switch (type) {
      case 134:
         bptr = (GLbyte *) list;
         return (GLuint) *(bptr+n);
      case 130:
         ubptr = (GLubyte *) list;
         return (GLuint) *(ubptr+n);
      case 131:
         sptr = (GLshort *) list;
         return (GLuint) *(sptr+n);
      case 128:
         usptr = (GLushort *) list;
         return (GLuint) *(usptr+n);
      case 132:
         iptr = (GLint *) list;
         return (GLuint) *(iptr+n);
      case 129:
         uiptr = (GLuint *) list;
         return (GLuint) *(uiptr+n);
      case 133:
         fptr = (GLfloat *) list;
         return (GLuint) *(fptr+n);
      case 137:
         ubptr = ((GLubyte *) list) + 2*n;
         return (GLuint) *ubptr * 256 + (GLuint) *(ubptr+1);
      case 136:
         ubptr = ((GLubyte *) list) + 3*n;
         return (GLuint) *ubptr * 65536
              + (GLuint) *(ubptr+1) * 256
              + (GLuint) *(ubptr+2);
      case 135:
         ubptr = ((GLubyte *) list) + 4*n;
         return (GLuint) *ubptr * 16777216
              + (GLuint) *(ubptr+1) * 65536
              + (GLuint) *(ubptr+2) * 256
              + (GLuint) *(ubptr+3);
      default:
         return 0;
   }
}
