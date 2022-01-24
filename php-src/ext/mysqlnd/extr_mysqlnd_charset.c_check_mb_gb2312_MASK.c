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
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(const char * const start, const char * const end)
{
	return (FUNC0((unsigned int)start[0]) && end - start > 1 &&
			FUNC1((unsigned int)start[1])) ? 2 : 0;
}