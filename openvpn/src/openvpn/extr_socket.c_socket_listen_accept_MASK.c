#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct openvpn_sockaddr {TYPE_2__ addr; } ;
struct link_socket_actual {struct openvpn_sockaddr dest; } ;
struct gc_arena {int dummy; } ;
struct addrinfo {int dummy; } ;
typedef  scalar_t__ socket_descriptor_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct link_socket_actual) ; 
 int D_LINK_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int M_ERR ; 
 int M_ERRNO ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ SOCKET_UNDEFINED ; 
 int /*<<< orphan*/  FUNC2 (struct openvpn_sockaddr*,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct gc_arena*) ; 
 struct gc_arena FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int volatile*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC12 (struct link_socket_actual*,struct gc_arena*) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,struct link_socket_actual*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,struct addrinfo const*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct link_socket_actual*) ; 

__attribute__((used)) static socket_descriptor_t
FUNC18(socket_descriptor_t sd,
                     struct link_socket_actual *act,
                     const char *remote_dynamic,
                     const struct addrinfo *local,
                     bool do_listen,
                     bool nowait,
                     volatile int *signal_received)
{
    struct gc_arena gc = FUNC5();
    /* struct openvpn_sockaddr *remote = &act->dest; */
    struct openvpn_sockaddr remote_verify = act->dest;
    socket_descriptor_t new_sd = SOCKET_UNDEFINED;

    FUNC0(*act);
    FUNC16(sd, local, do_listen, true);

    while (true)
    {
        int status;
        fd_set reads;
        struct timeval tv;

        FUNC1(&reads);
        FUNC10(sd, &reads);
        tv.tv_sec = 0;
        tv.tv_usec = 0;

        status = FUNC13(sd + 1, &reads, NULL, NULL, &tv);

        FUNC6(signal_received);
        if (*signal_received)
        {
            FUNC4(&gc);
            return sd;
        }

        if (status < 0)
        {
            FUNC8(D_LINK_ERRORS | M_ERRNO, "TCP: select() failed");
        }

        if (status <= 0)
        {
            FUNC7(1);
            continue;
        }

        new_sd = FUNC15(sd, act, nowait);

        if (FUNC14(new_sd))
        {
            struct addrinfo *ai = NULL;
            if (remote_dynamic)
            {
                FUNC11(0, remote_dynamic, NULL, 1, NULL,
                                    remote_verify.addr.sa.sa_family, &ai);
            }

            if (ai && !FUNC2(&remote_verify, ai))
            {
                FUNC8(M_WARN,
                    "TCP NOTE: Rejected connection attempt from %s due to --remote setting",
                    FUNC12(act, &gc));
                if (FUNC9(new_sd))
                {
                    FUNC8(M_ERR, "TCP: close socket failed (new_sd)");
                }
                FUNC3(ai);
            }
            else
            {
                if (ai)
                {
                    FUNC3(ai);
                }
                break;
            }
        }
        FUNC7(1);
    }

    if (!nowait && FUNC9(sd))
    {
        FUNC8(M_ERR, "TCP: close socket failed (sd)");
    }

    FUNC17(act);

    FUNC4(&gc);
    return new_sd;
}