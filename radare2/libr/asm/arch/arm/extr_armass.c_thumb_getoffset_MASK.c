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
typedef  scalar_t__ ut64 ;
typedef  int st32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static st32 FUNC1(char *label, ut64 cur) {
	st32 res = FUNC0 (NULL, label);
	res -= 4;
	res -= cur; // possible integer underflow
	//printf("thumb_getoffset: %s, %lld, %lld\n", label, res, cur);
	return res;
}