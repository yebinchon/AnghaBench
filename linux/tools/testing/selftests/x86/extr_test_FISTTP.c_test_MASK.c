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
 int FE_DIVBYZERO ; 
 int FE_INEXACT ; 
 int FE_INVALID ; 
 int FE_OVERFLOW ; 
 int FE_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int res16 ; 
 int res32 ; 
 int res64 ; 

int FUNC3(void)
{
	int ex;

	FUNC0(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	asm volatile ("\n"
	"	fld1""\n"
	"	fisttp	res16""\n"
	"	fld1""\n"
	"	fisttpl	res32""\n"
	"	fld1""\n"
	"	fisttpll res64""\n"
	: : : "memory"
	);
	if (res16 != 1 || res32 != 1 || res64 != 1) {
		FUNC2("[BAD]\tfisttp 1\n");
		return 1;
	}
	ex = FUNC1(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	if (ex != 0) {
		FUNC2("[BAD]\tfisttp 1: wrong exception state\n");
		return 1;
	}

	FUNC0(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	asm volatile ("\n"
	"	fldpi""\n"
	"	fisttp	res16""\n"
	"	fldpi""\n"
	"	fisttpl	res32""\n"
	"	fldpi""\n"
	"	fisttpll res64""\n"
	: : : "memory"
	);
	if (res16 != 3 || res32 != 3 || res64 != 3) {
		FUNC2("[BAD]\tfisttp pi\n");
		return 1;
	}
	ex = FUNC1(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	if (ex != FE_INEXACT) {
		FUNC2("[BAD]\tfisttp pi: wrong exception state\n");
		return 1;
	}

	FUNC0(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	asm volatile ("\n"
	"	fldpi""\n"
	"	fchs""\n"
	"	fisttp	res16""\n"
	"	fldpi""\n"
	"	fchs""\n"
	"	fisttpl	res32""\n"
	"	fldpi""\n"
	"	fchs""\n"
	"	fisttpll res64""\n"
	: : : "memory"
	);
	if (res16 != 0xfffd || res32 != 0xfffffffd || res64 != 0xfffffffffffffffdULL) {
		FUNC2("[BAD]\tfisttp -pi\n");
		return 1;
	}
	ex = FUNC1(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	if (ex != FE_INEXACT) {
		FUNC2("[BAD]\tfisttp -pi: wrong exception state\n");
		return 1;
	}

	FUNC0(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	asm volatile ("\n"
	"	fldln2""\n"
	"	fisttp	res16""\n"
	"	fldln2""\n"
	"	fisttpl	res32""\n"
	"	fldln2""\n"
	"	fisttpll res64""\n"
	: : : "memory"
	);
	/* Test truncation to zero (round-to-nearest would give 1 here) */
	if (res16 != 0 || res32 != 0 || res64 != 0) {
		FUNC2("[BAD]\tfisttp ln2\n");
		return 1;
	}
	ex = FUNC1(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
	if (ex != FE_INEXACT) {
		FUNC2("[BAD]\tfisttp ln2: wrong exception state\n");
		return 1;
	}

	return 0;
}