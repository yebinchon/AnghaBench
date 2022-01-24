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
struct ltq_atm_ops {int /*<<< orphan*/  (* fw_ver ) (unsigned int*,unsigned int*) ;} ;

/* Variables and functions */
 int IFX_ATM_VER_MAJOR ; 
 int IFX_ATM_VER_MID ; 
 int IFX_ATM_VER_MINOR ; 
 scalar_t__ FUNC0 (char*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static inline int FUNC2(const struct ltq_atm_ops *ops, char *buf)
{
	int len = 0;
	unsigned int major, minor;

	ops->fw_ver(&major, &minor);

	len += FUNC0(buf + len, "ATM%d.%d.%d", IFX_ATM_VER_MAJOR, IFX_ATM_VER_MID, IFX_ATM_VER_MINOR);
	len += FUNC0(buf + len, "    ATM (A1) firmware version %d.%d\n", major, minor);

	return len;
}