#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* release_context ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  resowner; } ;
typedef  TYPE_1__ JitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__ provider ; 
 scalar_t__ provider_successfully_loaded ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(JitContext *context)
{
	if (provider_successfully_loaded)
		provider.release_context(context);

	FUNC1(context->resowner, FUNC0(context));
	FUNC2(context);
}