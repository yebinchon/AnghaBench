#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * value; int /*<<< orphan*/ ** cb_ptr_s; } ;
typedef  TYPE_1__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(void *data) {
	RConfigNode *node = data;
	if (!node->value || !*node->value) {
		FUNC0 (*node->cb_ptr_s);
		*node->cb_ptr_s = NULL;
	} else {
		*node->cb_ptr_s = FUNC1 (*node->cb_ptr_s, node->value);
	}
	return true;
}