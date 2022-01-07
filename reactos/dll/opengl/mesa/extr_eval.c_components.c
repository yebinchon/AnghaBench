
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLenum ;
__attribute__((used)) static GLint components( GLenum target )
{
   switch (target) {
      case 138: return 3;
      case 137: return 4;
      case 144: return 1;
      case 145: return 4;
      case 143: return 3;
      case 142: return 1;
      case 141: return 2;
      case 140: return 3;
      case 139: return 4;
      case 129: return 3;
      case 128: return 4;
      case 135: return 1;
      case 136: return 4;
      case 134: return 3;
      case 133: return 1;
      case 132: return 2;
      case 131: return 3;
      case 130: return 4;
      default: return 0;
   }
}
