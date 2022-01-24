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
typedef  int /*<<< orphan*/  REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static void FUNC1 (REgg *egg, int type, char *out, int idx) {
	switch (type) {
	case 0: FUNC0 (out, "fp,$%d", -idx); break; /* variable */
	case 1: FUNC0 (out, "sp,$%d", idx); break; /* argument */ // XXX: MUST BE r0, r1, r2, ..
	}
}