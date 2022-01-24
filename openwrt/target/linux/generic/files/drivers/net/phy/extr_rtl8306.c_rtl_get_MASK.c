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
typedef  int u16 ;
struct switch_dev {int dummy; } ;
struct rtl_reg {int bits; int shift; scalar_t__ inverted; int /*<<< orphan*/  reg; int /*<<< orphan*/  phy; int /*<<< orphan*/  page; } ;
typedef  enum rtl_regidx { ____Placeholder_rtl_regidx } rtl_regidx ;

/* Variables and functions */
 int FUNC0 (struct rtl_reg*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct switch_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_reg* rtl_regs ; 

__attribute__((used)) static inline int
FUNC3(struct switch_dev *dev, enum rtl_regidx s)
{
	const struct rtl_reg *r = &rtl_regs[s];
	u16 val;

	FUNC1(s >= FUNC0(rtl_regs));
	if (r->bits == 0) /* unimplemented */
		return 0;

	val = FUNC2(dev, r->page, r->phy, r->reg);

	if (r->shift > 0)
		val >>= r->shift;

	if (r->inverted)
		val = ~val;

	val &= (1 << r->bits) - 1;

	return val;
}