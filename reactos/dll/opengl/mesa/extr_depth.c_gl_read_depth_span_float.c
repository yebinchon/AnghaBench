
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Buffer; } ;
struct TYPE_5__ {scalar_t__ Depth; } ;
typedef size_t GLuint ;
typedef int GLint ;
typedef float GLfloat ;
typedef scalar_t__ GLdepth ;
typedef TYPE_2__ GLcontext ;


 float DEPTH_SCALE ;
 scalar_t__* Z_ADDRESS (TYPE_2__*,int ,int ) ;

void gl_read_depth_span_float( GLcontext* ctx,
                               GLuint n, GLint x, GLint y, GLfloat depth[] )
{
   GLdepth *zptr;
   GLfloat scale;
   GLuint i;

   scale = 1.0F / DEPTH_SCALE;

   if (ctx->Buffer->Depth) {
      zptr = Z_ADDRESS( ctx, x, y );
      for (i=0;i<n;i++) {
  depth[i] = (GLfloat) zptr[i] * scale;
      }
   }
   else {
      for (i=0;i<n;i++) {
  depth[i] = 0.0F;
      }
   }
}
