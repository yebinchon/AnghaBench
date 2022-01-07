
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* ReadIndexSpan ) (TYPE_3__*,size_t,scalar_t__,scalar_t__,size_t*) ;} ;
struct TYPE_9__ {TYPE_2__ Driver; TYPE_1__* Buffer; } ;
struct TYPE_7__ {scalar_t__ Height; scalar_t__ Width; } ;
typedef size_t GLuint ;
typedef scalar_t__ GLint ;
typedef TYPE_3__ GLcontext ;


 size_t MIN2 (size_t,scalar_t__) ;
 int stub1 (TYPE_3__*,size_t,scalar_t__,scalar_t__,size_t*) ;
 int stub2 (TYPE_3__*,size_t,scalar_t__,scalar_t__,size_t*) ;

void gl_read_index_span( GLcontext *ctx,
                         GLuint n, GLint x, GLint y, GLuint indx[] )
{
   register GLuint i;

   if (y<0 || y>=ctx->Buffer->Height || x>=ctx->Buffer->Width) {

      for (i=0;i<n;i++) {
  indx[i] = 0;
      }
   }
   else {
      if (x>=0 && x+n<=ctx->Buffer->Width) {

  (*ctx->Driver.ReadIndexSpan)( ctx, n, x, y, indx );
      }
      else {
  i = 0;
  if (x<0) {
     while (x<0 && n>0) {
        indx[i] = 0;
        x++;
        n--;
        i++;
     }
  }
  n = MIN2( n, ctx->Buffer->Width - x );
  (*ctx->Driver.ReadIndexSpan)( ctx, n, x, y, indx+i );
      }
   }
}
