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
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int NLocBuffer ; 

__attribute__((used)) static bool
FUNC1(int *newval, void **extra, GucSource source)
{
	/*
	 * Once local buffers have been initialized, it's too late to change this.
	 */
	if (NLocBuffer && NLocBuffer != *newval)
	{
		FUNC0("\"temp_buffers\" cannot be changed after any temporary tables have been accessed in the session.");
		return false;
	}
	return true;
}