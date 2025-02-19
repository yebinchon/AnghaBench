
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Buffer; } ;
struct TYPE_4__ {scalar_t__ Ymin; scalar_t__ Ymax; scalar_t__ Xmax; scalar_t__ Xmin; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLubyte ;
typedef scalar_t__ GLint ;
typedef TYPE_2__ GLcontext ;



GLint gl_scissor_span( GLcontext *ctx,
                       GLuint n, GLint x, GLint y, GLubyte mask[] )
{

   if (y<ctx->Buffer->Ymin || y>ctx->Buffer->Ymax
       || x>ctx->Buffer->Xmax || x+(GLint)n-1<ctx->Buffer->Xmin) {
      return 0;
   }
   else {
      GLint i;
      GLint xMin = ctx->Buffer->Xmin;
      GLint xMax = ctx->Buffer->Xmax;
      for (i=0; x+i < xMin; i++) {
         mask[i] = 0;
      }
      for (i=(GLint)n-1; x+i > xMax; i--) {
         mask[i] = 0;
      }

      return 1;
   }
}
