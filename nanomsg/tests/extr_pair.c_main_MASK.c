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
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 ()
{
    int sb;
    int sc;

    sb = FUNC5 (AF_SP, NN_PAIR);
    FUNC0 (sb, SOCKET_ADDRESS);
    sc = FUNC5 (AF_SP, NN_PAIR);
    FUNC2 (sc, SOCKET_ADDRESS);

    FUNC4 (sc, "ABC");
    FUNC3 (sb, "ABC");
    FUNC4 (sb, "DEF");
    FUNC3 (sc, "DEF");

    FUNC1 (sc);
    FUNC1 (sb);

    return 0;
}