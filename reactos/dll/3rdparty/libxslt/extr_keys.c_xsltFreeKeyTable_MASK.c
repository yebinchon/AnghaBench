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
typedef  TYPE_1__* xsltKeyTablePtr ;
typedef  int /*<<< orphan*/  xsltKeyTable ;
struct TYPE_5__ {int /*<<< orphan*/ * keys; struct TYPE_5__* nameURI; struct TYPE_5__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltFreeNodeSetEntry ; 

__attribute__((used)) static void
FUNC3(xsltKeyTablePtr keyt) {
    if (keyt == NULL)
	return;
    if (keyt->name != NULL)
	FUNC1(keyt->name);
    if (keyt->nameURI != NULL)
	FUNC1(keyt->nameURI);
    if (keyt->keys != NULL)
	FUNC2(keyt->keys, xsltFreeNodeSetEntry);
    FUNC0(keyt, -1, sizeof(xsltKeyTable));
    FUNC1(keyt);
}