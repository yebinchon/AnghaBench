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
 int /*<<< orphan*/  NN_STAT_CURRENT_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11 (int argc, const char *argv[])
{
    int sb;
    int sc;
    char socket_address[128];

    FUNC4(socket_address, "tcp", "127.0.0.1",
            FUNC0(argc, argv));

    sb = FUNC10 (AF_SP, NN_PAIR);
    FUNC5 (sb, socket_address);
    sc = FUNC10 (AF_SP, NN_PAIR);
    FUNC7 (sc, socket_address);

    FUNC3(100);
    FUNC9 (sc, "ABC");
    FUNC8 (sb, "ABC");
    FUNC1 (FUNC2 (sc, NN_STAT_CURRENT_CONNECTIONS) == 1);
    FUNC6 (sb);
    FUNC3(300);
    FUNC1 (FUNC2 (sc, NN_STAT_CURRENT_CONNECTIONS) == 0);
    FUNC6 (sc);

    return 0;
}