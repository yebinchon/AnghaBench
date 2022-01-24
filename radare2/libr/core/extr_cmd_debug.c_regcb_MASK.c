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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regcmp ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static bool FUNC2(void *u, const ut64 k, const void *v) {
	RList *sorted = (RList*) u;
	ut64 *n = FUNC1 (k);
	FUNC0 (sorted, n, regcmp);
	return true;
}