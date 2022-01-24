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
typedef  int /*<<< orphan*/  to_send ;
struct user_pass {char* username; char* password; scalar_t__ defined; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct socks_proxy_info {int /*<<< orphan*/  authfile; } ;
typedef  int ssize_t ;
typedef  scalar_t__ socket_descriptor_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int D_LINK_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GET_USER_PASS_MANAGEMENT ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int M_ERRNO ; 
 int M_NONFATAL ; 
 int /*<<< orphan*/  UP_TYPE_SOCKS ; 
 int /*<<< orphan*/  FUNC1 (int volatile*) ; 
 int /*<<< orphan*/  FUNC2 (struct user_pass*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char*,int,char*) ; 
 int FUNC6 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC8 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static bool
FUNC10(struct socks_proxy_info *p,
                             socket_descriptor_t sd,
                             volatile int *signal_received)
{
    char to_send[516];
    char buf[2];
    int len = 0;
    const int timeout_sec = 5;
    struct user_pass creds;
    ssize_t size;

    creds.defined = 0;
    if (!FUNC2(&creds, p->authfile, UP_TYPE_SOCKS, GET_USER_PASS_MANAGEMENT))
    {
        FUNC3(M_NONFATAL, "SOCKS failed to get username/password.");
        return false;
    }

    if ( (FUNC9(creds.username) > 255) || (FUNC9(creds.password) > 255) )
    {
        FUNC3(M_NONFATAL,
            "SOCKS username and/or password exceeds 255 characters.  "
            "Authentication not possible.");
        return false;
    }
    FUNC5(to_send, sizeof(to_send), "\x01%c%s%c%s", (int) FUNC9(creds.username),
                     creds.username, (int) FUNC9(creds.password), creds.password);
    size = FUNC8(sd, to_send, FUNC9(to_send), MSG_NOSIGNAL);

    if (size != FUNC9(to_send))
    {
        FUNC3(D_LINK_ERRORS | M_ERRNO, "socks_username_password_auth: TCP port write failed on send()");
        return false;
    }

    while (len < 2)
    {
        int status;
        ssize_t size;
        fd_set reads;
        struct timeval tv;
        char c;

        FUNC0(&reads);
        FUNC4(sd, &reads);
        tv.tv_sec = timeout_sec;
        tv.tv_usec = 0;

        status = FUNC7(sd + 1, &reads, NULL, NULL, &tv);

        FUNC1(signal_received);
        if (*signal_received)
        {
            return false;
        }

        /* timeout? */
        if (status == 0)
        {
            FUNC3(D_LINK_ERRORS | M_ERRNO, "socks_username_password_auth: TCP port read timeout expired");
            return false;
        }

        /* error */
        if (status < 0)
        {
            FUNC3(D_LINK_ERRORS | M_ERRNO, "socks_username_password_auth: TCP port read failed on select()");
            return false;
        }

        /* read single char */
        size = FUNC6(sd, &c, 1, MSG_NOSIGNAL);

        /* error? */
        if (size != 1)
        {
            FUNC3(D_LINK_ERRORS | M_ERRNO, "socks_username_password_auth: TCP port read failed on recv()");
            return false;
        }

        /* store char in buffer */
        buf[len++] = c;
    }

    /* VER = 5, SUCCESS = 0 --> auth success */
    if (buf[0] != 5 && buf[1] != 0)
    {
        FUNC3(D_LINK_ERRORS, "socks_username_password_auth: server refused the authentication");
        return false;
    }

    return true;
}