
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Test; } ;
struct TYPE_8__ {TYPE_1__ Depth; TYPE_2__* Buffer; } ;
struct TYPE_7__ {int Width; int Height; int * Depth; } ;
typedef int GLdepth ;
typedef TYPE_3__ GLcontext ;


 int GL_FALSE ;
 int GL_OUT_OF_MEMORY ;
 int free (int *) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 scalar_t__ malloc (int) ;

void gl_alloc_depth_buffer( GLcontext* ctx )
{

   if (ctx->Buffer->Depth) {
      free(ctx->Buffer->Depth);
      ctx->Buffer->Depth = ((void*)0);
   }


   ctx->Buffer->Depth = (GLdepth *) malloc( ctx->Buffer->Width
                                            * ctx->Buffer->Height
                                            * sizeof(GLdepth) );
   if (!ctx->Buffer->Depth) {

      ctx->Depth.Test = GL_FALSE;
      gl_error( ctx, GL_OUT_OF_MEMORY, "Couldn't allocate depth buffer" );
   }
}
