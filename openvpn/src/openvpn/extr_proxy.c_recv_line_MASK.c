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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct buffer {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ socket_descriptor_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer) ; 
 int D_LINK_ERRORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int M_ERRNO ; 
 int M_INFO ; 
 scalar_t__ FUNC3 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,char) ; 
 int /*<<< orphan*/  FUNC6 (int volatile*) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static bool
FUNC13(socket_descriptor_t sd,
          char *buf,
          int len,
          const int timeout_sec,
          const bool verbose,
          struct buffer *lookahead,
          volatile int *signal_received)
{
    struct buffer la;
    int lastc = 0;

    FUNC1(la);
    if (lookahead)
    {
        la = *lookahead;
    }

    while (true)
    {
        int status;
        ssize_t size;
        fd_set reads;
        struct timeval tv;
        uint8_t c;

        if (FUNC3(&la))
        {
            FUNC0(FUNC4(&la, 0));
        }

        FUNC2(&reads);
        FUNC10(sd, &reads);
        tv.tv_sec = timeout_sec;
        tv.tv_usec = 0;

        status = FUNC12(sd + 1, &reads, NULL, NULL, &tv);

        FUNC6(signal_received);
        if (*signal_received)
        {
            goto error;
        }

        /* timeout? */
        if (status == 0)
        {
            if (verbose)
            {
                FUNC9(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read timeout expired");
            }
            goto error;
        }

        /* error */
        if (status < 0)
        {
            if (verbose)
            {
                FUNC9(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read failed on select()");
            }
            goto error;
        }

        /* read single char */
        size = FUNC11(sd, &c, 1, MSG_NOSIGNAL);

        /* error? */
        if (size != 1)
        {
            if (verbose)
            {
                FUNC9(D_LINK_ERRORS | M_ERRNO, "recv_line: TCP port read failed on recv()");
            }
            goto error;
        }

#if 0
        if (isprint(c))
        {
            msg(M_INFO, "PROXY: read '%c' (%d)", c, (int)c);
        }
        else
        {
            msg(M_INFO, "PROXY: read (%d)", (int)c);
        }
#endif

        /* store char in buffer */
        if (len > 1)
        {
            *buf++ = c;
            --len;
        }

        /* also store char in lookahead buffer */
        if (FUNC3(&la))
        {
            FUNC5(&la, c);
            if (!FUNC7(c) && !FUNC8(c)) /* not ascii? */
            {
                if (verbose)
                {
                    FUNC9(D_LINK_ERRORS | M_ERRNO, "recv_line: Non-ASCII character (%d) read on recv()", (int)c);
                }
                *lookahead = la;
                return false;
            }
        }

        /* end of line? */
        if (lastc == '\r' && c == '\n')
        {
            break;
        }

        lastc = c;
    }

    /* append trailing null */
    if (len > 0)
    {
        *buf++ = '\0';
    }

    return true;

error:
    return false;
}