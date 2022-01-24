#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ip17xx_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  m; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ reg ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct ip17xx_state*,TYPE_1__) ; 
 int FUNC2 (struct ip17xx_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ip17xx_state *state, reg mii, u16 value)
{
	int err;

	if (!FUNC0(mii))
		return -EFAULT;
	err = FUNC2(state, mii.p, mii.m, value);
	if (err < 0)
		return err;
	FUNC3(2);
	FUNC1(state, mii);
	return 0;
}