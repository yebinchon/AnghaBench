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
typedef  int /*<<< orphan*/  rk_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

double FUNC1(rk_state *state) {
  /* shifts : 67108864 = 0x4000000, 9007199254740992 = 0x20000000000000 */
  long a = FUNC0(state) >> 5, b = FUNC0(state) >> 6;
  return (a * 67108864.0 + b) / 9007199254740992.0;
}