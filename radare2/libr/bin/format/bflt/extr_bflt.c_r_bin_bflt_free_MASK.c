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
struct r_bin_bflt_obj {int /*<<< orphan*/  b; struct r_bin_bflt_obj* hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r_bin_bflt_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct r_bin_bflt_obj *obj) {
	if (obj) {
		FUNC0 (obj->hdr);
		FUNC1 (obj->b);
		FUNC0 (obj);
	}
}