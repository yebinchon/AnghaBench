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
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,unsigned int) ; 
 unsigned int shadow_pkru ; 

__attribute__((used)) static inline unsigned int FUNC3(int line)
{
	unsigned int pkru = FUNC0();

	FUNC2("rdpkru(line=%d) pkru: %x shadow: %x\n",
			line, pkru, shadow_pkru);
	FUNC1(pkru == shadow_pkru);

	return pkru;
}