#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ NameStackDepth; int /*<<< orphan*/ * NameStack; scalar_t__ HitFlag; } ;
struct TYPE_8__ {scalar_t__ RenderMode; TYPE_1__ Select; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ GL_SELECT ; 
 int /*<<< orphan*/  GL_STACK_OVERFLOW ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ MAX_NAME_STACK_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3( GLcontext *ctx, GLuint name )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glPushName" );
      return;
   }
   if (ctx->RenderMode!=GL_SELECT) {
      return;
   }
   if (ctx->Select.HitFlag) {
      FUNC2( ctx );
   }
   if (ctx->Select.NameStackDepth<MAX_NAME_STACK_DEPTH) {
      ctx->Select.NameStack[ctx->Select.NameStackDepth++] = name;
   }
   else {
      FUNC1( ctx, GL_STACK_OVERFLOW, "glPushName" );
   }
}