
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; scalar_t__ Width; scalar_t__ Height; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Scissor; } ;
typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLint ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_ALL ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_Scissor( GLcontext *ctx,
                 GLint x, GLint y, GLsizei width, GLsizei height )
{
   if (width<0 || height<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glScissor" );
      return;
   }
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glBegin" );
      return;
   }

   if (x!=ctx->Scissor.X || y!=ctx->Scissor.Y ||
       width!=ctx->Scissor.Width || height!=ctx->Scissor.Height) {
      ctx->Scissor.X = x;
      ctx->Scissor.Y = y;
      ctx->Scissor.Width = width;
      ctx->Scissor.Height = height;
      ctx->NewState |= NEW_ALL;
   }
}
