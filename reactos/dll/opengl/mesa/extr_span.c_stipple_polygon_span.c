
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* PolygonStipple; } ;
typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;
typedef int GLint ;
typedef TYPE_1__ GLcontext ;



__attribute__((used)) static void stipple_polygon_span( GLcontext *ctx,
                                  GLuint n, GLint x, GLint y, GLubyte mask[] )
{
   register GLuint i, m, stipple, highbit=0x80000000;

   stipple = ctx->PolygonStipple[y % 32];
   m = highbit >> (GLuint) (x % 32);

   for (i=0;i<n;i++) {
      if ((m & stipple)==0) {
  mask[i] = 0;
      }
      m = m >> 1;
      if (m==0) {
  m = 0x80000000;
      }
   }
}
