#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct broadif {int dummy; } ;
typedef  int /*<<< orphan*/  broadlist_t ;

/* Variables and functions */
 struct broadif* FUNC0 (int /*<<< orphan*/ *) ; 
 struct broadif* FUNC1 (struct broadif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct broadif*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC3(broadlist_t *list)
{
	struct broadif *bip, *next;

	bip = FUNC0(list);

	while (bip != NULL) {
		next = FUNC1(bip, link);
		FUNC2(bip);
		bip = next;
	}
}