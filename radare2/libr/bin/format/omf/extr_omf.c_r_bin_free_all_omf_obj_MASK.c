#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ names; scalar_t__ symbols; scalar_t__ sections; scalar_t__ records; } ;
typedef  TYPE_1__ r_bin_omf_obj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(r_bin_omf_obj *obj) {
	if (obj) {
		if (obj->records) {
			FUNC2 (obj);
		}
		if (obj->sections) {
			FUNC3 (obj);
		}
		if (obj->symbols) {
			FUNC4 (obj);
		}
		if (obj->names) {
			FUNC1 (obj);
		}
		FUNC0 (obj);
	}
}