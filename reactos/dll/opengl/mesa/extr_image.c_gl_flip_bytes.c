
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;



void gl_flip_bytes( GLubyte *p, GLuint n )
{
   register GLuint i, a, b;

   for (i=0;i<n;i++) {
      b = (GLuint) p[i];
      a = ((b & 0x01) << 7) |
   ((b & 0x02) << 5) |
   ((b & 0x04) << 3) |
   ((b & 0x08) << 1) |
   ((b & 0x10) >> 1) |
   ((b & 0x20) >> 3) |
   ((b & 0x40) >> 5) |
   ((b & 0x80) >> 7);
      p[i] = (GLubyte) a;
   }
}
