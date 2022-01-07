
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MatrixMode; } ;
struct TYPE_7__ {TYPE_1__ Transform; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;



 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_MatrixMode( GLcontext *ctx, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glMatrixMode" );
      return;
   }
   switch (mode) {
      case 130:
      case 129:
      case 128:
         ctx->Transform.MatrixMode = mode;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glMatrixMode" );
   }
}
