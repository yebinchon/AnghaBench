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
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8366S_PECR ; 
 int FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct rtl8366_smi *smi, int port, int enable)
{
	return FUNC0(smi, RTL8366S_PECR, (1 << port),
				(enable) ? 0 : (1 << port));
}