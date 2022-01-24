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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_WS ; 
 int /*<<< orphan*/  NN_WS_MSG_TYPE ; 
 int NN_WS_MSG_TYPE_TEXT ; 
 int /*<<< orphan*/  socket_address ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 ()
{
    int sb;
    int sc;
    int opt;
    uint8_t bad[20];

    /*  Negative testing... bad UTF-8 data for text. */
    sb = FUNC8 (AF_SP, NN_PAIR);
    sc = FUNC8 (AF_SP, NN_PAIR);

    opt = NN_WS_MSG_TYPE_TEXT;
    FUNC7 (sb, NN_WS, NN_WS_MSG_TYPE, &opt, sizeof (opt));
    opt = NN_WS_MSG_TYPE_TEXT;
    FUNC7 (sc, NN_WS, NN_WS_MSG_TYPE, &opt, sizeof (opt));
    opt = 500;
    FUNC7 (sb, NN_SOL_SOCKET, NN_RCVTIMEO, &opt, sizeof (opt));

    FUNC1 (sb, socket_address);
    FUNC3 (sc, socket_address);

    FUNC6 (sc, "GOOD");
    FUNC5 (sb, "GOOD");

    /*  and the bad ... */
    FUNC0 ((char *)bad, "BAD.");
    bad[2] = (char)0xDD;
    FUNC6 (sc, (char *)bad);

    /*  Make sure we dropped the frame. */
    FUNC4 (sb, ETIMEDOUT);

    FUNC2 (sb);
    FUNC2 (sc);

    return;
}