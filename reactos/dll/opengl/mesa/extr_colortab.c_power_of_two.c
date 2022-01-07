
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;

__attribute__((used)) static GLboolean power_of_two( GLint k )
{
   GLint i, m = 1;
   for (i=0; i<32; i++) {
      if (k == m)
         return GL_TRUE;
      m = m << 1;
   }
   return GL_FALSE;
}
