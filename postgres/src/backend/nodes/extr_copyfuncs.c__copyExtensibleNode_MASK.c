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
struct TYPE_8__ {int /*<<< orphan*/  (* nodeCopy ) (TYPE_2__*,TYPE_2__ const*) ;int /*<<< orphan*/  node_size; } ;
typedef  TYPE_1__ ExtensibleNodeMethods ;
typedef  TYPE_2__ ExtensibleNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  T_ExtensibleNode ; 
 int /*<<< orphan*/  extnodename ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__ const*) ; 

__attribute__((used)) static ExtensibleNode *
FUNC4(const ExtensibleNode *from)
{
	ExtensibleNode *newnode;
	const ExtensibleNodeMethods *methods;

	methods = FUNC1(from->extnodename, false);
	newnode = (ExtensibleNode *) FUNC2(methods->node_size,
										 T_ExtensibleNode);
	FUNC0(extnodename);

	/* copy the private fields */
	methods->nodeCopy(newnode, from);

	return newnode;
}