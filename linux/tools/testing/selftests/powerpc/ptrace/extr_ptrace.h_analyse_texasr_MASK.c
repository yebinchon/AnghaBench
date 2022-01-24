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
 unsigned long TEXASR_ABT ; 
 unsigned long TEXASR_DA ; 
 unsigned long TEXASR_FO ; 
 unsigned long TEXASR_FP ; 
 unsigned long TEXASR_FS ; 
 unsigned long TEXASR_HV ; 
 unsigned long TEXASR_IC ; 
 unsigned long TEXASR_IFC ; 
 unsigned long TEXASR_NO ; 
 unsigned long TEXASR_NTC ; 
 unsigned long TEXASR_PR ; 
 unsigned long TEXASR_ROT ; 
 unsigned long TEXASR_SIC ; 
 unsigned long TEXASR_SPD ; 
 unsigned long TEXASR_TC ; 
 unsigned long TEXASR_TE ; 
 unsigned long TEXASR_TIC ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(unsigned long texasr)
{
	FUNC1("TEXASR: %16lx\t", texasr);

	if (texasr & TEXASR_FP)
		FUNC1("TEXASR_FP  ");

	if (texasr & TEXASR_DA)
		FUNC1("TEXASR_DA  ");

	if (texasr & TEXASR_NO)
		FUNC1("TEXASR_NO  ");

	if (texasr & TEXASR_FO)
		FUNC1("TEXASR_FO  ");

	if (texasr & TEXASR_SIC)
		FUNC1("TEXASR_SIC  ");

	if (texasr & TEXASR_NTC)
		FUNC1("TEXASR_NTC  ");

	if (texasr & TEXASR_TC)
		FUNC1("TEXASR_TC  ");

	if (texasr & TEXASR_TIC)
		FUNC1("TEXASR_TIC  ");

	if (texasr & TEXASR_IC)
		FUNC1("TEXASR_IC  ");

	if (texasr & TEXASR_IFC)
		FUNC1("TEXASR_IFC  ");

	if (texasr & TEXASR_ABT)
		FUNC1("TEXASR_ABT  ");

	if (texasr & TEXASR_SPD)
		FUNC1("TEXASR_SPD  ");

	if (texasr & TEXASR_HV)
		FUNC1("TEXASR_HV  ");

	if (texasr & TEXASR_PR)
		FUNC1("TEXASR_PR  ");

	if (texasr & TEXASR_FS)
		FUNC1("TEXASR_FS  ");

	if (texasr & TEXASR_TE)
		FUNC1("TEXASR_TE  ");

	if (texasr & TEXASR_ROT)
		FUNC1("TEXASR_ROT  ");

	FUNC1("TFIAR :%lx\n", FUNC0());
}