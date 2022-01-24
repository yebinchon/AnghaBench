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
typedef  scalar_t__ ut8 ;
typedef  int ut16 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static void FUNC2(void* memPtr, ut16 value) {
	if (FUNC0 ()) {
		FUNC1 (memPtr, value);
	} else {
		ut8* p = (ut8*)memPtr;
		p[0] = (ut8) value;
		p[1] = (ut8)(value>>8);
	}
}