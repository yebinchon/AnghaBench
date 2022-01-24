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
struct nn_msghdr {int msg_iovlen; struct nn_iovec* msg_iov; } ;
struct nn_iovec {char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct nn_msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct nn_msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10 ()
{
    int rc;
    int sb;
    int sc;
    struct nn_iovec iov [2];
    struct nn_msghdr hdr;
    char buf [6];

    sb = FUNC9 (AF_SP, NN_PAIR);
    FUNC6 (sb, SOCKET_ADDRESS);
    sc = FUNC9 (AF_SP, NN_PAIR);
    FUNC8 (sc, SOCKET_ADDRESS);

    iov [0].iov_base = "AB";
    iov [0].iov_len = 2;
    iov [1].iov_base = "CDEF";
    iov [1].iov_len = 4;
    FUNC2 (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = iov;
    hdr.msg_iovlen = 2;
    rc = FUNC5 (sc, &hdr, 0);
    FUNC0 (rc >= 0);
    FUNC3 (rc == 6);

    iov [0].iov_base = buf;
    iov [0].iov_len = 4;
    iov [1].iov_base = buf + 4;
    iov [1].iov_len = 2;
    FUNC2 (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = iov;
    hdr.msg_iovlen = 2;
    rc = FUNC4 (sb, &hdr, 0);
    FUNC0 (rc >= 0);
    FUNC3 (rc == 6);
    FUNC3 (FUNC1 (buf, "ABCDEF", 6) == 0);

    FUNC7 (sc);
    FUNC7 (sb);

    return 0;
}