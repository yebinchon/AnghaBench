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
typedef  char char_u ;

/* Variables and functions */
 char NUL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_NAME ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static char_u *
FUNC3()
{
#if defined(MSDOS) || defined(OS2) || defined(WIN3264)
    /* DOS console nearly always black */
    return (char_u *)"dark";
#else
    char_u	*p;

    if (FUNC0(T_NAME, "linux") == 0
	    || FUNC0(T_NAME, "screen.linux") == 0
	    || FUNC0(T_NAME, "cygwin") == 0
	    || FUNC0(T_NAME, "putty") == 0
	    || ((p = FUNC1((char_u *)"COLORFGBG")) != NULL
		&& (p = FUNC2(p, ';')) != NULL
		&& ((p[1] >= '0' && p[1] <= '6') || p[1] == '8')
		&& p[2] == NUL))
	return (char_u *)"dark";
    return (char_u *)"light";
#endif
}