
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLenum ;
GLint gl_components_in_format( GLenum format )
{
   switch (format) {
      case 136:
      case 128:
      case 135:
      case 131:
      case 134:
      case 137:
      case 140:
      case 133:
         return 1;
      case 132:
  return 2;
      case 130:
      case 138:
  return 3;
      case 129:
      case 139:
  return 4;
      default:
         return -1;
   }
}
