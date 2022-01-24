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
typedef  int pid_t ;

/* Variables and functions */
 int EX_OSERR ; 
 int EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,char**) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(char **argv)
{
    int rv = EX_SOFTWARE;
    pid_t pid = FUNC1();

    switch (pid) {
    case -1:
        FUNC2("fork");
        rv = EX_OSERR;
        break; /* NOTREACHED */
    case 0:
        FUNC0(argv[0], argv);
        FUNC2("exec");
        rv = EX_SOFTWARE;
        break; /* NOTREACHED */
    default:
        rv = FUNC3(pid);
    }
    return rv;
}