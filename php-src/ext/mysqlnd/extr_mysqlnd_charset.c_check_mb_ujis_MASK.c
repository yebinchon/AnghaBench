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
typedef  int zend_uchar ;
typedef  char const* start ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 

__attribute__((used)) static unsigned int FUNC4(const char * const start, const char * const end)
{
	if (*(zend_uchar*)start < 0x80) {
		return 0;	/* invalid ujis character */
	}
	if (FUNC0(*(start)) && FUNC0(*((start)+1))) {
		return 2;
	}
	if (FUNC2(*(start)) && FUNC1(*((start)+1))) {
		return 2;
	}
	if (FUNC3(*(start)) && (end-start) > 2 && FUNC0(*((start)+1)) && FUNC0(*((start)+2))) {
		return 3;
	}
	return 0;
}