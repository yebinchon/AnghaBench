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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(char *name)
{
    int		len = FUNC1(name);

    if (len > 0 && name[len - 1] != '\\' && name[len - 1] != '/')
	FUNC0(name, "\\");
}