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
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int) ; 

void
FUNC5(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2)
{
	void * md5;
	
	md5 = FUNC2();
	FUNC0(md5);
	FUNC4(md5, (char *)in, 16);
	FUNC4(md5, (char *)salt1, 32);
	FUNC4(md5, (char *)salt2, 32);
    FUNC1(md5, (char *)out);
	FUNC3(md5);
}