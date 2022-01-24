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
struct TYPE_8__ {int /*<<< orphan*/  mht; int /*<<< orphan*/  almighty_db; int /*<<< orphan*/  rotate_db; int /*<<< orphan*/  db; int /*<<< orphan*/  can; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** panels; } ;
typedef  TYPE_1__ RPanelsRoot ;
typedef  TYPE_2__ RPanels ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(RPanelsRoot *panels_root, int i, RPanels *panels) {
	FUNC4 (true);
	if (panels) {
		FUNC0 (panels);
		FUNC3 (panels->can);
		FUNC5 (panels->db);
		FUNC5 (panels->rotate_db);
		FUNC5 (panels->almighty_db);
		FUNC2 (panels->mht);
		FUNC1 (panels);
		panels_root->panels[i] = NULL;
	}
}