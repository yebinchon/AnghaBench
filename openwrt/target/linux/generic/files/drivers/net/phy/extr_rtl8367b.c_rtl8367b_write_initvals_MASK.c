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
struct rtl8367b_initval {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct rtl8366_smi *smi,
				  const struct rtl8367b_initval *initvals,
				  int count)
{
	int err;
	int i;

	for (i = 0; i < count; i++)
		FUNC0(smi, initvals[i].reg, initvals[i].val);

	return 0;
}