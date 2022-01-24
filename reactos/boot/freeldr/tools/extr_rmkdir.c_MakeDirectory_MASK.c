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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(char *Directory)
{
    char    CurrentDirectory[1024];

    FUNC1(CurrentDirectory, 1024);

    if (FUNC0(Directory) == 0)
    {
        FUNC0(CurrentDirectory);
        return 0;
    }

#if defined (UNIX_PATHS) || defined (__DJGPP__)
    if (mkdir(Directory, 0755) != 0)
    {
        perror("Failed to create directory");
        return 1;
    }
#else
    if (FUNC2(Directory) != 0)
    {
        FUNC3("Failed to create directory");
        return 1;
    }
#endif

    if (FUNC0(Directory) != 0)
    {
        FUNC3("Failed to change directory");
        return 1;
    }

    FUNC0(CurrentDirectory);

    return 0;
}