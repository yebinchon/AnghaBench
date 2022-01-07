
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int LogicOp; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Color; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_LogicOp( GLcontext *ctx, GLenum opcode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLogicOp" );
      return;
   }
   switch (opcode) {
      case 140:
      case 129:
      case 139:
      case 138:
      case 134:
      case 136:
      case 143:
      case 135:
      case 132:
      case 133:
      case 128:
      case 137:
      case 141:
      case 142:
      case 130:
      case 131:
         ctx->Color.LogicOp = opcode;
         ctx->NewState |= NEW_RASTER_OPS;
  return;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glLogicOp" );
  return;
   }
}
