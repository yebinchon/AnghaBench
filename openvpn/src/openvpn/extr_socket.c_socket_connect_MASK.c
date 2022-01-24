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
struct sockaddr {int dummy; } ;
struct signal_info {int /*<<< orphan*/  source; scalar_t__ signal_received; } ;
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_LINK_ERRORS ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  OPENVPN_STATE_TCP_CONNECT ; 
 scalar_t__ SIGUSR1 ; 
 int /*<<< orphan*/  SIG_SOURCE_CONNECTION_FAILED ; 
 int /*<<< orphan*/  SOCKET_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ management ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sockaddr const*,int const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(socket_descriptor_t *sd,
               const struct sockaddr *dest,
               const int connect_timeout,
               struct signal_info *sig_info)
{
    struct gc_arena gc = FUNC1();
    int status;

#ifdef CONNECT_NONBLOCK
    msg(M_INFO, "Attempting to establish TCP connection with %s [nonblock]",
        print_sockaddr(dest, &gc));
#else
    FUNC4(M_INFO, "Attempting to establish TCP connection with %s",
        FUNC7(dest, &gc));
#endif

#ifdef ENABLE_MANAGEMENT
    if (management)
    {
        management_set_state(management,
                             OPENVPN_STATE_TCP_CONNECT,
                             NULL,
                             NULL,
                             NULL,
                             NULL,
                             NULL);
    }
#endif

    /* Set the actual address */
    status = FUNC6(*sd, dest, connect_timeout, &sig_info->signal_received);

    FUNC2(&sig_info->signal_received);
    if (sig_info->signal_received)
    {
        goto done;
    }

    if (status)
    {

        FUNC4(D_LINK_ERRORS, "TCP: connect to %s failed: %s",
            FUNC7(dest, &gc), FUNC8(status));

        FUNC5(*sd);
        *sd = SOCKET_UNDEFINED;
        sig_info->signal_received = SIGUSR1;
        sig_info->source = SIG_SOURCE_CONNECTION_FAILED;
    }
    else
    {
        FUNC4(M_INFO, "TCP connection established with %s",
            FUNC7(dest, &gc));
    }

done:
    FUNC0(&gc);
}