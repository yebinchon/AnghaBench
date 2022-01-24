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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 

void *FUNC2(size_t size, char* file, int line)
{
	void *mp = NULL;
	if ((mp = (void*)FUNC0(size)) == NULL){

	} else{
		//os_printf("%s %d %p %d\n",file, line, mp, size);
		FUNC1(mp, 0, size);
	}
	return mp;
}