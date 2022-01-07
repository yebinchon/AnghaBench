
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ DrawBuffer; } ;
struct TYPE_10__ {TYPE_3__* Buffer; TYPE_2__ Color; TYPE_1__* Visual; } ;
struct TYPE_9__ {int Width; int Height; int * BackAlpha; int * Alpha; int * FrontAlpha; } ;
struct TYPE_7__ {scalar_t__ BackAlphaEnabled; scalar_t__ FrontAlphaEnabled; } ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_4__ GLcontext ;


 scalar_t__ GL_BACK ;
 scalar_t__ GL_FRONT ;
 int GL_OUT_OF_MEMORY ;
 int free (int *) ;
 int gl_error (TYPE_4__*,int ,char*) ;
 scalar_t__ malloc (int) ;

void gl_alloc_alpha_buffers( GLcontext* ctx )
{
   GLint bytes = ctx->Buffer->Width * ctx->Buffer->Height * sizeof(GLubyte);

   if (ctx->Visual->FrontAlphaEnabled) {
      if (ctx->Buffer->FrontAlpha) {
         free( ctx->Buffer->FrontAlpha );
      }
      ctx->Buffer->FrontAlpha = (GLubyte *) malloc( bytes );
      if (!ctx->Buffer->FrontAlpha) {

         gl_error( ctx, GL_OUT_OF_MEMORY, "Couldn't allocate front alpha buffer" );
      }
   }
   if (ctx->Visual->BackAlphaEnabled) {
      if (ctx->Buffer->BackAlpha) {
         free( ctx->Buffer->BackAlpha );
      }
      ctx->Buffer->BackAlpha = (GLubyte *) malloc( bytes );
      if (!ctx->Buffer->BackAlpha) {

         gl_error( ctx, GL_OUT_OF_MEMORY, "Couldn't allocate back alpha buffer" );
      }
   }
   if (ctx->Color.DrawBuffer==GL_FRONT) {
      ctx->Buffer->Alpha = ctx->Buffer->FrontAlpha;
   }
   if (ctx->Color.DrawBuffer==GL_BACK) {
      ctx->Buffer->Alpha = ctx->Buffer->BackAlpha;
   }
}
