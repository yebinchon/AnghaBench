#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Save; int /*<<< orphan*/  API; void* ExecuteFlag; void* CompileFlag; scalar_t__ CurrentPos; int /*<<< orphan*/ * CurrentBlock; int /*<<< orphan*/ * CurrentListPtr; scalar_t__ CurrentListNum; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  scalar_t__ GLuint ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_1__ GLcontext ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 scalar_t__ GL_COMPILE ; 
 scalar_t__ GL_COMPILE_AND_EXECUTE ; 
 void* GL_FALSE ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 void* GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3( GLcontext *ctx, GLuint list, GLenum mode )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glNewList" );
      return;
   }
   if (list==0) {
      FUNC1( ctx, GL_INVALID_VALUE, "glNewList" );
      return;
   }
   if (mode!=GL_COMPILE && mode!=GL_COMPILE_AND_EXECUTE) {
      FUNC1( ctx, GL_INVALID_ENUM, "glNewList" );
      return;
   }
   if (ctx->CurrentListPtr) {
      /* already compiling a display list */
      FUNC1( ctx, GL_INVALID_OPERATION, "glNewList" );
      return;
   }

   /* Allocate new display list */
   ctx->CurrentListNum = list;
   ctx->CurrentListPtr = ctx->CurrentBlock = (Node *) FUNC2( sizeof(Node) * BLOCK_SIZE );
   ctx->CurrentPos = 0;

   ctx->CompileFlag = GL_TRUE;
   if (mode==GL_COMPILE) {
      ctx->ExecuteFlag = GL_FALSE;
   }
   else {
      /* Compile and execute */
      ctx->ExecuteFlag = GL_TRUE;
   }

   ctx->API = ctx->Save;  /* Switch the API function pointers */
}