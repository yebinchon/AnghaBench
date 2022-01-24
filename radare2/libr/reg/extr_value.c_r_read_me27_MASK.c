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
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut27 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static ut27 FUNC1(const ut8 *buf, int boff) {
	ut27 ret = 0;
	FUNC0 ((ut8 *)&ret, 18, buf, boff, 9);
	FUNC0 ((ut8 *)&ret, 9, buf, boff + 9, 9);
	FUNC0 ((ut8 *)&ret, 0, buf, boff + 18, 9);
	return ret;
}