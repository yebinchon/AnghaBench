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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

int
FUNC1(char_u *name)
{
    int f = FUNC0(name);

    if (f == -1)
	return FALSE;		    /* file does not exist at all */

    return (f & FILE_ATTRIBUTE_DIRECTORY) != 0;
}