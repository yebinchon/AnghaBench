
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Enabled; } ;
struct TYPE_8__ {TYPE_1__ Stencil; TYPE_2__* Buffer; } ;
struct TYPE_7__ {int Width; int Height; int * Stencil; } ;
typedef int GLuint ;
typedef int GLstencil ;
typedef TYPE_3__ GLcontext ;


 int GL_FALSE ;
 int GL_OUT_OF_MEMORY ;
 int free (int *) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 scalar_t__ malloc (int) ;

void gl_alloc_stencil_buffer( GLcontext *ctx )
{
   GLuint buffersize = ctx->Buffer->Width * ctx->Buffer->Height;


   if (ctx->Buffer->Stencil) {
      free(ctx->Buffer->Stencil);
      ctx->Buffer->Stencil = ((void*)0);
   }


   ctx->Buffer->Stencil = (GLstencil *) malloc(buffersize * sizeof(GLstencil));
   if (!ctx->Buffer->Stencil) {

      ctx->Stencil.Enabled = GL_FALSE;
      gl_error( ctx, GL_OUT_OF_MEMORY, "gl_alloc_stencil_buffer" );
   }
}
