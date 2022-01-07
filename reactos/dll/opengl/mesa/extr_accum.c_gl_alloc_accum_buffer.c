
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Buffer; } ;
struct TYPE_5__ {int Width; int Height; int * Accum; } ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;
typedef int GLaccum ;


 int GL_OUT_OF_MEMORY ;
 int free (int *) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 scalar_t__ malloc (int) ;

void gl_alloc_accum_buffer( GLcontext *ctx )
{
   GLint n;

   if (ctx->Buffer->Accum) {
      free( ctx->Buffer->Accum );
      ctx->Buffer->Accum = ((void*)0);
   }


   n = ctx->Buffer->Width * ctx->Buffer->Height * 4 * sizeof(GLaccum);
   ctx->Buffer->Accum = (GLaccum *) malloc( n );
   if (!ctx->Buffer->Accum) {

      gl_error( ctx, GL_OUT_OF_MEMORY, "glAccum" );
   }
}
