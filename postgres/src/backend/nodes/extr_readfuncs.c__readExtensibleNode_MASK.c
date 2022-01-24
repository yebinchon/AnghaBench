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
struct TYPE_7__ {char const* extnodename; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* nodeRead ) (TYPE_2__*) ;int /*<<< orphan*/  node_size; } ;
typedef  TYPE_1__ ExtensibleNodeMethods ;
typedef  TYPE_2__ ExtensibleNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  T_ExtensibleNode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  length ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  token ; 

__attribute__((used)) static ExtensibleNode *
FUNC8(void)
{
	const ExtensibleNodeMethods *methods;
	ExtensibleNode *local_node;
	const char *extnodename;

	FUNC2();

	token = FUNC6(&length); /* skip :extnodename */
	token = FUNC6(&length); /* get extnodename */

	extnodename = FUNC5(token, length);
	if (!extnodename)
		FUNC3(ERROR, "extnodename has to be supplied");
	methods = FUNC0(extnodename, false);

	local_node = (ExtensibleNode *) FUNC4(methods->node_size,
											T_ExtensibleNode);
	local_node->extnodename = extnodename;

	/* deserialize the private fields */
	methods->nodeRead(local_node);

	FUNC1();
}