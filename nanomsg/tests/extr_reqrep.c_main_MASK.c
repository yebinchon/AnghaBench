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
typedef  int /*<<< orphan*/  timeo ;
typedef  int /*<<< orphan*/  resend_ivl ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ EFSM ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  NN_REQ_RESEND_IVL ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12 ()
{
    int rc;
    int rep1;
    int rep2;
    int req1;
    int req2;
    int resend_ivl;
    char buf [7];
    int timeo;

    /*  Test req/rep with full socket types. */
    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC6 (rep1, SOCKET_ADDRESS);
    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC8 (req1, SOCKET_ADDRESS);
    req2 = FUNC11 (AF_SP, NN_REQ);
    FUNC8 (req2, SOCKET_ADDRESS);

    /*  Check invalid sequence of sends and recvs. */
    rc = FUNC4 (rep1, "ABC", 3, 0);
    FUNC1 (rc == -1 && FUNC2 () == EFSM);
    rc = FUNC3 (req1, buf, sizeof (buf), 0);
    FUNC1 (rc == -1 && FUNC2 () == EFSM);

    /*  Check fair queueing the requests. */
    FUNC10 (req2, "ABC");
    FUNC9 (rep1, "ABC");
    FUNC10 (rep1, "ABC");
    FUNC9 (req2, "ABC");

    FUNC10 (req1, "ABC");
    FUNC9 (rep1, "ABC");
    FUNC10 (rep1, "ABC");
    FUNC9 (req1, "ABC");

    FUNC7 (rep1);
    FUNC7 (req1);
    FUNC7 (req2);

    /*  Check load-balancing of requests. */
    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC6 (req1, SOCKET_ADDRESS);
    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC8 (rep1, SOCKET_ADDRESS);
    rep2 = FUNC11 (AF_SP, NN_REP);
    FUNC8 (rep2, SOCKET_ADDRESS);

    FUNC10 (req1, "ABC");
    FUNC9 (rep1, "ABC");
    FUNC10 (rep1, "ABC");
    FUNC9 (req1, "ABC");

    FUNC10 (req1, "ABC");
    FUNC9 (rep2, "ABC");
    FUNC10 (rep2, "ABC");
    FUNC9 (req1, "ABC");

    FUNC7 (rep2);
    FUNC7 (rep1);
    FUNC7 (req1);

    /*  Test re-sending of the request. */
    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC6 (rep1, SOCKET_ADDRESS);
    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC8 (req1, SOCKET_ADDRESS);
    resend_ivl = 100;
    rc = FUNC5 (req1, NN_REQ, NN_REQ_RESEND_IVL,
        &resend_ivl, sizeof (resend_ivl));
    FUNC0 (rc == 0);

    FUNC10 (req1, "ABC");
    FUNC9 (rep1, "ABC");
    /*  The following waits for request to be resent  */
    FUNC9 (rep1, "ABC");

    FUNC7 (req1);
    FUNC7 (rep1);

    /*  Check sending a request when the peer is not available. (It should
        be sent immediatelly when the peer comes online rather than relying
        on the resend algorithm. */
    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC8 (req1, SOCKET_ADDRESS);
    FUNC10 (req1, "ABC");

    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC6 (rep1, SOCKET_ADDRESS);
    timeo = 200;
    rc = FUNC5 (rep1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    FUNC0 (rc == 0);
    FUNC9 (rep1, "ABC");

    FUNC7 (req1);
    FUNC7 (rep1);

    /*  Check removing socket request sent to (It should
        be sent immediatelly to other peer rather than relying
        on the resend algorithm). */
    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC6 (req1, SOCKET_ADDRESS);
    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC8 (rep1, SOCKET_ADDRESS);
    rep2 = FUNC11 (AF_SP, NN_REP);
    FUNC8 (rep2, SOCKET_ADDRESS);

    timeo = 200;
    rc = FUNC5 (rep1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    FUNC0 (rc == 0);
    rc = FUNC5 (rep2, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    FUNC0 (rc == 0);

    FUNC10 (req1, "ABC");
    /*  We got request through rep1  */
    FUNC9 (rep1, "ABC");
    /*  But instead replying we simulate crash  */
    FUNC7 (rep1);
    /*  The rep2 should get request immediately  */
    FUNC9 (rep2, "ABC");
    /*  Let's check it's delivered well  */
    FUNC10 (rep2, "REPLY");
    FUNC9 (req1, "REPLY");


    FUNC7 (req1);
    FUNC7 (rep2);

    /*  Test cancelling delayed request  */

    req1 = FUNC11 (AF_SP, NN_REQ);
    FUNC8 (req1, SOCKET_ADDRESS);
    FUNC10 (req1, "ABC");
    FUNC10 (req1, "DEF");

    rep1 = FUNC11 (AF_SP, NN_REP);
    FUNC6 (rep1, SOCKET_ADDRESS);
    timeo = 100;
    FUNC9 (rep1, "DEF");

    FUNC7 (req1);
    FUNC7 (rep1);

    return 0;
}