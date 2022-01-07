
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLboolean ;
 int GL_FALSE ;







 int GL_TRUE ;

__attribute__((used)) static GLboolean legalFormat(GLenum format)
{
    switch(format) {
      case 136:
      case 128:
      case 135:
      case 131:
      case 134:
      case 137:
      case 140:
      case 130:
      case 129:
      case 133:
      case 132:
      case 139:
      case 138:
 return GL_TRUE;
      default:
 return GL_FALSE;
    }
}
