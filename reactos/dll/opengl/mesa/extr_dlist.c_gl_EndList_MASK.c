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
struct TYPE_8__ {int /*<<< orphan*/  Exec; int /*<<< orphan*/  API; int /*<<< orphan*/  CompileFlag; int /*<<< orphan*/  ExecuteFlag; int /*<<< orphan*/ * CurrentListPtr; scalar_t__ CurrentListNum; TYPE_1__* Shared; } ;
struct TYPE_7__ {int /*<<< orphan*/  DisplayList; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPCODE_END_OF_LIST ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC4( GLcontext *ctx )
{
   Node *n;

   /* Check that a list is under construction */
   if (!ctx->CurrentListPtr) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glEndList" );
      return;
   }

   n = FUNC1( ctx, OPCODE_END_OF_LIST, 0 );
   (void)n;

   /* Destroy old list, if any */
   FUNC2(ctx, ctx->CurrentListNum);
   /* Install the list */
   FUNC0(ctx->Shared->DisplayList, ctx->CurrentListNum, ctx->CurrentListPtr);

   ctx->CurrentListNum = 0;
   ctx->CurrentListPtr = NULL;
   ctx->ExecuteFlag = GL_TRUE;
   ctx->CompileFlag = GL_FALSE;

   ctx->API = ctx->Exec;   /* Switch the API function pointers */
}