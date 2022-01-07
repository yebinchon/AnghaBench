
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Count; int BufferSize; } ;
struct TYPE_9__ {int Hits; int BufferSize; int NameStackDepth; int BufferCount; int HitFlag; } ;
struct TYPE_11__ {int RenderMode; int NewState; TYPE_2__ Feedback; TYPE_1__ Select; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;


 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int NEW_ALL ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_warning (TYPE_3__*,char*) ;
 int write_hit_record (TYPE_3__*) ;

GLint gl_RenderMode( GLcontext *ctx, GLenum mode )
{
   GLint result;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glRenderMode" );
   }

   switch (ctx->RenderMode) {
      case 129:
  result = 0;
  break;
      case 128:
  if (ctx->Select.HitFlag) {
     write_hit_record( ctx );
  }
  if (ctx->Select.BufferCount > ctx->Select.BufferSize) {




     result = -1;
  }
  else {
     result = ctx->Select.Hits;
  }
  ctx->Select.BufferCount = 0;
  ctx->Select.Hits = 0;
  ctx->Select.NameStackDepth = 0;
  break;
      case 130:
  if (ctx->Feedback.Count > ctx->Feedback.BufferSize) {

     result = -1;
  }
  else {
     result = ctx->Feedback.Count;
  }
  ctx->Feedback.Count = 0;
  break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "glRenderMode" );
  return 0;
   }

   switch (mode) {
      case 129:
         break;
      case 128:
  if (ctx->Select.BufferSize==0) {

     gl_error( ctx, GL_INVALID_OPERATION, "glRenderMode" );
  }
  break;
      case 130:
  if (ctx->Feedback.BufferSize==0) {

     gl_error( ctx, GL_INVALID_OPERATION, "glRenderMode" );
  }
  break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "glRenderMode" );
  return 0;
   }

   ctx->RenderMode = mode;
   ctx->NewState |= NEW_ALL;

   return result;
}
