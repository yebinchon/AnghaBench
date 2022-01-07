
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {void* SWLogicOpEnabled; int LogicOp; scalar_t__ IndexLogicOpEnabled; scalar_t__ ColorLogicOpEnabled; } ;
struct TYPE_11__ {scalar_t__ (* LogicOp ) (TYPE_4__*,int ) ;} ;
struct TYPE_13__ {TYPE_3__ Color; TYPE_2__ Driver; TYPE_1__* Visual; } ;
struct TYPE_10__ {scalar_t__ RGBAflag; } ;
typedef TYPE_4__ GLcontext ;


 int GL_COPY ;
 void* GL_FALSE ;
 void* GL_TRUE ;
 scalar_t__ stub1 (TYPE_4__*,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int ) ;
 scalar_t__ stub3 (TYPE_4__*,int ) ;
 scalar_t__ stub4 (TYPE_4__*,int ) ;

__attribute__((used)) static void update_pixel_logic( GLcontext *ctx )
{
   if (ctx->Visual->RGBAflag) {

      if (ctx->Color.ColorLogicOpEnabled) {
  if (ctx->Driver.LogicOp
             && (*ctx->Driver.LogicOp)( ctx, ctx->Color.LogicOp )) {

     ctx->Color.SWLogicOpEnabled = GL_FALSE;
  }
  else {

     ctx->Color.SWLogicOpEnabled = GL_TRUE;
  }
      }
      else {

  if (ctx->Driver.LogicOp) {
            (void) (*ctx->Driver.LogicOp)( ctx, GL_COPY );
         }
  ctx->Color.SWLogicOpEnabled = GL_FALSE;
      }
   }
   else {

      if (ctx->Color.IndexLogicOpEnabled) {
  if (ctx->Driver.LogicOp
             && (*ctx->Driver.LogicOp)( ctx, ctx->Color.LogicOp )) {

     ctx->Color.SWLogicOpEnabled = GL_FALSE;
  }
  else {

     ctx->Color.SWLogicOpEnabled = GL_TRUE;
  }
      }
      else {

  if (ctx->Driver.LogicOp) {
            (void) (*ctx->Driver.LogicOp)( ctx, GL_COPY );
         }
  ctx->Color.SWLogicOpEnabled = GL_FALSE;
      }
   }
}
