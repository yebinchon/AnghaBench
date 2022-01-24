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
typedef  int /*<<< orphan*/  u32 ;
struct rtl8366_smi {scalar_t__ ext_mbus; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct rtl8366_smi *smi, u32 addr, u32 data)
{
	if (smi->ext_mbus)
		return FUNC0(smi, addr, data);
	else
		return FUNC1(smi, addr, data, true);
}