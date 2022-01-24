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
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  NN_STAT_ACCEPTED_CONNECTIONS ; 
 int /*<<< orphan*/  NN_STAT_BYTES_RECEIVED ; 
 int /*<<< orphan*/  NN_STAT_BYTES_SENT ; 
 int /*<<< orphan*/  NN_STAT_CURRENT_CONNECTIONS ; 
 int /*<<< orphan*/  NN_STAT_ESTABLISHED_CONNECTIONS ; 
 int /*<<< orphan*/  NN_STAT_MESSAGES_RECEIVED ; 
 int /*<<< orphan*/  NN_STAT_MESSAGES_SENT ; 
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
    int rep1;
    int req1;
    char socket_address[128];

    FUNC4(socket_address, "tcp", "127.0.0.1",
            FUNC0(argc, argv));

    /*  Test req/rep with full socket types. */
    rep1 = FUNC10 (AF_SP, NN_REP);
    FUNC5 (rep1, socket_address);
    FUNC3 (100);

    req1 = FUNC10 (AF_SP, NN_REQ);
    FUNC7 (req1, socket_address);
    FUNC3 (200);

    FUNC1 (FUNC2(rep1, NN_STAT_ACCEPTED_CONNECTIONS) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_ESTABLISHED_CONNECTIONS) == 0);
    FUNC1 (FUNC2(rep1, NN_STAT_CURRENT_CONNECTIONS) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_SENT) == 0);
    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_RECEIVED) == 0);

    FUNC1 (FUNC2(req1, NN_STAT_ACCEPTED_CONNECTIONS) == 0);
    FUNC1 (FUNC2(req1, NN_STAT_ESTABLISHED_CONNECTIONS) == 1);
    FUNC1 (FUNC2(req1, NN_STAT_CURRENT_CONNECTIONS) == 1);
    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_SENT) == 0);
    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_RECEIVED) == 0);

    FUNC9 (req1, "ABC");
    FUNC3 (100);

    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_SENT) == 1);
    FUNC1 (FUNC2(req1, NN_STAT_BYTES_SENT) == 3);
    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_RECEIVED) == 0);
    FUNC1 (FUNC2(req1, NN_STAT_BYTES_RECEIVED) == 0);

    FUNC8(rep1, "ABC");

    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_SENT) == 0);
    FUNC1 (FUNC2(rep1, NN_STAT_BYTES_SENT) == 0);
    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_RECEIVED) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_BYTES_RECEIVED) == 3);

    FUNC9 (rep1, "OK");
    FUNC8 (req1, "OK");

    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_SENT) == 1);
    FUNC1 (FUNC2(req1, NN_STAT_BYTES_SENT) == 3);
    FUNC1 (FUNC2(req1, NN_STAT_MESSAGES_RECEIVED) == 1);
    FUNC1 (FUNC2(req1, NN_STAT_BYTES_RECEIVED) == 2);

    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_SENT) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_BYTES_SENT) == 2);
    FUNC1 (FUNC2(rep1, NN_STAT_MESSAGES_RECEIVED) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_BYTES_RECEIVED) == 3);

    FUNC6 (req1);

    FUNC3 (100);

    FUNC1 (FUNC2(rep1, NN_STAT_ACCEPTED_CONNECTIONS) == 1);
    FUNC1 (FUNC2(rep1, NN_STAT_ESTABLISHED_CONNECTIONS) == 0);
    FUNC1 (FUNC2(rep1, NN_STAT_CURRENT_CONNECTIONS) == 0);

    FUNC6 (rep1);

    return 0;
}