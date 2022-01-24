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
struct socks_proxy_info {int dummy; } ;
struct openvpn_sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct openvpn_sockaddr) ; 
 int D_LINK_ERRORS ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int M_ERRNO ; 
 int SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct openvpn_sockaddr*,int volatile*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socks_proxy_info*,int /*<<< orphan*/ ,int volatile*) ; 

void
FUNC5(struct socks_proxy_info *p,
                               socket_descriptor_t ctrl_sd,  /* already open to proxy */
                               socket_descriptor_t udp_sd,
                               struct openvpn_sockaddr *relay_addr,
                               volatile int *signal_received)
{
    if (!FUNC4(p, ctrl_sd, signal_received))
    {
        goto error;
    }

    {
        /* send Socks UDP ASSOCIATE message */
        /* VER = 5, CMD = 3 (UDP ASSOCIATE), RSV = 0, ATYP = 1 (IP V4),
         * BND.ADDR = 0, BND.PORT = 0 */
        const ssize_t size = FUNC3(ctrl_sd,
                                  "\x05\x03\x00\x01\x00\x00\x00\x00\x00\x00",
                                  10, MSG_NOSIGNAL);
        if (size != 10)
        {
            FUNC1(D_LINK_ERRORS | M_ERRNO, "establish_socks_proxy_passthru: TCP port write failed on send()");
            goto error;
        }
    }

    /* receive reply from Socks proxy */
    FUNC0(*relay_addr);
    if (!FUNC2(ctrl_sd, relay_addr, signal_received))
    {
        goto error;
    }

    return;

error:
    if (!*signal_received)
    {
        *signal_received = SIGUSR1; /* SOFT-SIGUSR1 -- socks error */
    }
    return;
}