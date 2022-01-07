
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* Finish ) (TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ Driver; } ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int stub1 (TYPE_2__*) ;

void gl_Finish( GLcontext *ctx )
{

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glFinish" );
      return;
   }
   if (ctx->Driver.Finish) {
      (*ctx->Driver.Finish)( ctx );
   }
}
