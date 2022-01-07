
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Buffer; } ;
struct TYPE_4__ {scalar_t__ Height; scalar_t__ Width; } ;
typedef int GLuint ;
typedef scalar_t__ GLubyte ;
typedef scalar_t__ GLint ;
typedef TYPE_2__ GLcontext ;



__attribute__((used)) static GLuint clip_span( GLcontext *ctx,
                         GLint n, GLint x, GLint y, GLubyte mask[] )
{
   GLint i;


   if (y<0 || y>=ctx->Buffer->Height) {
      return 0;
   }


   if (x>=0 && x+n<=ctx->Buffer->Width) {

      return 1;
   }
   else if (x+n<=0) {

      return 0;
   }
   else if (x>=ctx->Buffer->Width) {

      return 0;
   }
   else {

      for (i=0;i<n;i++) {
         if (x+i<0 || x+i>=ctx->Buffer->Width) {
            mask[i] = 0;
         }
      }
      return 1;
   }
}
