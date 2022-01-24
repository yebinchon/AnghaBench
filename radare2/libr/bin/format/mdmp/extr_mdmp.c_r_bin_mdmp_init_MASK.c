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
struct r_bin_mdmp_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r_bin_mdmp_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct r_bin_mdmp_obj*) ; 
 int /*<<< orphan*/  FUNC3 (struct r_bin_mdmp_obj*) ; 
 int /*<<< orphan*/  FUNC4 (struct r_bin_mdmp_obj*) ; 

__attribute__((used)) static int FUNC5(struct r_bin_mdmp_obj *obj) {
	FUNC3 (obj);

	if (!FUNC2 (obj)) {
		FUNC0 ("[ERROR] Failed to initialise header\n");
		return false;
	}

	if (!FUNC1 (obj)) {
		FUNC0 ("[ERROR] Failed to initialise directory structures!\n");
		return false;
	}

	if (!FUNC4 (obj)) {
		FUNC0 ("[ERROR] Failed to initialise pe binaries!\n");
		return false;
	}

	return true;
}