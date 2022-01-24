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
typedef  int ut8 ;
typedef  scalar_t__ ut16 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (void const*) ; 

__attribute__((used)) static ut16 FUNC2(const void* memPtr) {
	if (FUNC0()) {
		return FUNC1(memPtr);
	}
	const ut8* p = (const ut8*)memPtr;
	return (ut16)((ut16)p[0] + (p[1]<<8));
}