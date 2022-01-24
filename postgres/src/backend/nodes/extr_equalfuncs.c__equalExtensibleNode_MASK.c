#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  extnodename; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* nodeEqual ) (TYPE_2__ const*,TYPE_2__ const*) ;} ;
typedef  TYPE_1__ ExtensibleNodeMethods ;
typedef  TYPE_2__ ExtensibleNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  extnodename ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,TYPE_2__ const*) ; 

__attribute__((used)) static bool
FUNC3(const ExtensibleNode *a, const ExtensibleNode *b)
{
	const ExtensibleNodeMethods *methods;

	FUNC0(extnodename);

	/* At this point, we know extnodename is the same for both nodes. */
	methods = FUNC1(a->extnodename, false);

	/* compare the private fields */
	if (!methods->nodeEqual(a, b))
		return false;

	return true;
}