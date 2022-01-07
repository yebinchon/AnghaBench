
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLbyte ;
GLint gl_sizeof_type( GLenum type )
{
   switch (type) {
      case 135:
  return 0;
      case 130:
         return sizeof(GLubyte);
      case 134:
  return sizeof(GLbyte);
      case 128:
  return sizeof(GLushort);
      case 131:
  return sizeof(GLshort);
      case 129:
  return sizeof(GLuint);
      case 132:
  return sizeof(GLint);
      case 133:
  return sizeof(GLfloat);
      default:
         return -1;
   }
}
