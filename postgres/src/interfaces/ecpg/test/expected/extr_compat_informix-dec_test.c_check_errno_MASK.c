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
#define  ECPG_INFORMIX_NUM_OVERFLOW 133 
#define  ECPG_INFORMIX_NUM_UNDERFLOW 132 
#define  PGTYPES_NUM_BAD_NUMERIC 131 
#define  PGTYPES_NUM_DIVIDE_ZERO 130 
#define  PGTYPES_NUM_OVERFLOW 129 
#define  PGTYPES_NUM_UNDERFLOW 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	switch(errno)
	{
		case 0:
			FUNC0("(no errno set) - ");
			break;
		case ECPG_INFORMIX_NUM_OVERFLOW:
			FUNC0("(errno == ECPG_INFORMIX_NUM_OVERFLOW) - ");
			break;
		case ECPG_INFORMIX_NUM_UNDERFLOW:
			FUNC0("(errno == ECPG_INFORMIX_NUM_UNDERFLOW) - ");
			break;
		case PGTYPES_NUM_OVERFLOW:
			FUNC0("(errno == PGTYPES_NUM_OVERFLOW) - ");
			break;
		case PGTYPES_NUM_UNDERFLOW:
			FUNC0("(errno == PGTYPES_NUM_UNDERFLOW) - ");
			break;
		case PGTYPES_NUM_BAD_NUMERIC:
			FUNC0("(errno == PGTYPES_NUM_BAD_NUMERIC) - ");
			break;
		case PGTYPES_NUM_DIVIDE_ZERO:
			FUNC0("(errno == PGTYPES_NUM_DIVIDE_ZERO) - ");
			break;
		default:
			FUNC0("(unknown errno (%d))\n", errno);
			FUNC0("(libc: (%s)) ", FUNC1(errno));
			break;
	}
}