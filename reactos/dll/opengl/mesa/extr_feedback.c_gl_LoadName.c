
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int NameStackDepth; void** NameStack; scalar_t__ HitFlag; } ;
struct TYPE_8__ {scalar_t__ RenderMode; TYPE_1__ Select; } ;
typedef void* GLuint ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ GL_SELECT ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int MAX_NAME_STACK_DEPTH ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int write_hit_record (TYPE_2__*) ;

void gl_LoadName( GLcontext *ctx, GLuint name )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLoadName" );
      return;
   }
   if (ctx->RenderMode!=GL_SELECT) {
      return;
   }
   if (ctx->Select.NameStackDepth==0) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLoadName" );
      return;
   }
   if (ctx->Select.HitFlag) {
      write_hit_record( ctx );
   }
   if (ctx->Select.NameStackDepth<MAX_NAME_STACK_DEPTH) {
      ctx->Select.NameStack[ctx->Select.NameStackDepth-1] = name;
   }
   else {
      ctx->Select.NameStack[MAX_NAME_STACK_DEPTH-1] = name;
   }
}
