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
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1 (const void *_a, const void *_b) {
	const RAnalFunction *a = _a, *b = _b;
	ut64 as = FUNC0 (a);
	ut64 bs = FUNC0 (b);
	return (as> bs)? 1: (as< bs)? -1: 0;
}