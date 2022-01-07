
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;



void gl_swap4( GLuint *p, GLuint n )
{
   register GLuint i, a, b;

   for (i=0;i<n;i++) {
      b = p[i];
      a = (b >> 24)
 | ((b >> 8) & 0xff00)
 | ((b << 8) & 0xff0000)
 | ((b << 24) & 0xff000000);
      p[i] = a;
   }
}
