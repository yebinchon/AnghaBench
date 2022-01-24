#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fix_columns; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 

__attribute__((used)) static bool FUNC2(void *user, void *data) {
	RConfigNode *node = (RConfigNode *) data;
	FUNC1 ()->fix_columns = FUNC0 (node->value);
	return true;
}