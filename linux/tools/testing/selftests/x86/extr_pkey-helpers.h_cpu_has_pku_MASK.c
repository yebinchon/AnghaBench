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
 unsigned int X86_FEATURE_OSPKE ; 
 unsigned int X86_FEATURE_PKU ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline int FUNC2(void)
{
	unsigned int eax;
	unsigned int ebx;
	unsigned int ecx;
	unsigned int edx;

	eax = 0x7;
	ecx = 0x0;
	FUNC0(&eax, &ebx, &ecx, &edx);

	if (!(ecx & X86_FEATURE_PKU)) {
		FUNC1("cpu does not have PKU\n");
		return 0;
	}
	if (!(ecx & X86_FEATURE_OSPKE)) {
		FUNC1("cpu does not have OSPKE\n");
		return 0;
	}
	return 1;
}