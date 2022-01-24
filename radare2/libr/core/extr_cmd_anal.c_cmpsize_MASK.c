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
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1 (const void *_a, const void *_b) {
	const RAnalFunction *a = _a, *b = _b;
	int sa = (int)FUNC0 (a);
	int sb = (int)FUNC0 (b);
	return (sa > sb)? -1: (sa < sb)? 1 : 0;
}