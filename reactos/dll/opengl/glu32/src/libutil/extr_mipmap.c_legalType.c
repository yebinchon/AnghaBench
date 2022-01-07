
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLboolean ;




 int GL_FALSE ;



 int GL_TRUE ;
__attribute__((used)) static GLboolean legalType(GLenum type)
{
    switch(type) {
      case 147:
      case 146:
      case 142:
      case 143:
      case 134:
      case 144:
      case 139:
      case 145:
      case 140:
      case 141:
      case 129:
      case 128:
      case 132:
      case 131:
      case 130:
      case 133:
      case 136:
      case 135:
      case 138:
      case 137:
  return GL_TRUE;
      default:
 return GL_FALSE;
    }
}
