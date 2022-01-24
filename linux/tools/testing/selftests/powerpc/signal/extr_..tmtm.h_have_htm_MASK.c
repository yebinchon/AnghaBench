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
 int /*<<< orphan*/  PPC_FEATURE2_HTM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline bool FUNC2(void)
{
#ifdef PPC_FEATURE2_HTM
	return have_hwcap2(PPC_FEATURE2_HTM);
#else
	FUNC1("PPC_FEATURE2_HTM not defined, can't check AT_HWCAP2\n");
	return false;
#endif
}