
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Buffer; } ;
struct TYPE_5__ {scalar_t__ Depth; } ;
typedef int GLuint ;
typedef int GLint ;
typedef double GLdepth ;
typedef TYPE_2__ GLcontext ;


 int MEMCPY (double*,double*,int) ;
 double* Z_ADDRESS (TYPE_2__*,int ,int ) ;

void gl_read_depth_span_int( GLcontext* ctx,
                             GLuint n, GLint x, GLint y, GLdepth depth[] )
{
   if (ctx->Buffer->Depth) {
      GLdepth *zptr = Z_ADDRESS( ctx, x, y );
      MEMCPY( depth, zptr, n * sizeof(GLdepth) );
   }
   else {
      GLuint i;
      for (i=0;i<n;i++) {
  depth[i] = 0.0;
      }
   }
}
