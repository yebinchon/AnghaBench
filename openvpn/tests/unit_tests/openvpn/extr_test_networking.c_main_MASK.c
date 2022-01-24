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
 int FUNC0 (char*) ; 
 char* iface ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,int) ; 
 int FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int
FUNC12(int argc, char *argv[])
{
    int test;

    if (argc < 2)
    {
        FUNC11(argv[0]);
        return -1;
    }

    /* the t_net script can use this command to perform a dry-run test */
    if (FUNC10(argv[1], "test") == 0)
    {
        return 0;
    }

    if (argc > 3)
    {
        iface = argv[2];
    }

    test = FUNC0(argv[1]);
    switch (test)
    {
        case 0:
            return FUNC4(true);
        case 1:
            return FUNC3(1281);
        case 2:
            return FUNC1("10.255.255.1", 24);
        case 3:
            return FUNC2("2001::1", 64);
        case 4:
            return FUNC5("11.11.11.0", 24, 0);
        case 5:
            return FUNC6("11.11.12.0", 24, "10.255.255.2", 0);
        case 6:
            return FUNC7("2001:babe:cafe:babe::", 64, 600);
        case 7:
            return FUNC8("2001:cafe:babe::", 48, "2001::2", 600);
        default:
            FUNC9("invalid test: %d\n", test);
            break;
    }

    FUNC11(argv[0]);
    return -1;
}