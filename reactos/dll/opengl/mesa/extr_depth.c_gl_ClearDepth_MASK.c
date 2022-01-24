#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Clear; } ;
struct TYPE_7__ {TYPE_1__ Depth; } ;
typedef  scalar_t__ GLfloat ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLclampd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext* ctx, GLclampd depth )
{
   if (FUNC1(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glClearDepth" );
      return;
   }
   ctx->Depth.Clear = (GLfloat) FUNC0( depth, 0.0, 1.0 );
}