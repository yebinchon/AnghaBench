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

/* Variables and functions */
#define  ECPG_INFORMIX_BAD_DAY 131 
#define  ECPG_INFORMIX_BAD_MONTH 130 
#define  ECPG_INFORMIX_ENOSHORTDATE 129 
#define  ECPG_INFORMIX_ENOTDMY 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(int ret)
{
	switch(ret)
	{
		case ECPG_INFORMIX_ENOTDMY:
			FUNC0("(ECPG_INFORMIX_ENOTDMY)");
			break;
		case ECPG_INFORMIX_ENOSHORTDATE:
			FUNC0("(ECPG_INFORMIX_ENOSHORTDATE)");
			break;
		case ECPG_INFORMIX_BAD_DAY:
			FUNC0("(ECPG_INFORMIX_BAD_DAY)");
			break;
		case ECPG_INFORMIX_BAD_MONTH:
			FUNC0("(ECPG_INFORMIX_BAD_MONTH)");
			break;
		default:
			FUNC0("(unknown ret: %d)", ret);
			break;
	}
	FUNC0("\n");
}