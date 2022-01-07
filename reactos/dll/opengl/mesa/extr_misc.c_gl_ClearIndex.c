
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ClearIndex; } ;
struct TYPE_10__ {int (* ClearIndex ) (TYPE_4__*,scalar_t__) ;} ;
struct TYPE_12__ {TYPE_3__ Color; TYPE_2__ Driver; TYPE_1__* Visual; } ;
struct TYPE_9__ {int RGBAflag; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLfloat ;
typedef TYPE_4__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_4__*) ;
 int gl_error (TYPE_4__*,int ,char*) ;
 int stub1 (TYPE_4__*,scalar_t__) ;

void gl_ClearIndex( GLcontext *ctx, GLfloat c )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glClearIndex" );
      return;
   }
   ctx->Color.ClearIndex = (GLuint) c;
   if (!ctx->Visual->RGBAflag) {

      (*ctx->Driver.ClearIndex)( ctx, ctx->Color.ClearIndex );
   }
}
