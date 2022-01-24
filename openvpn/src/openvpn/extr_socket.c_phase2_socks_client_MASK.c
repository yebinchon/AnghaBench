#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct signal_info {scalar_t__ signal_received; } ;
struct TYPE_10__ {TYPE_4__* lsa; } ;
struct TYPE_6__ {int /*<<< orphan*/  dest; } ;
struct link_socket {TYPE_5__ info; int /*<<< orphan*/  proxy_dest_port; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  proxy_dest_host; int /*<<< orphan*/  remote_host; TYPE_1__ socks_relay; int /*<<< orphan*/  sd; int /*<<< orphan*/  ctrl_sd; int /*<<< orphan*/  socks_proxy; int /*<<< orphan*/  server_poll_timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  dest; } ;
struct TYPE_9__ {int /*<<< orphan*/ * remote_list; TYPE_3__* current_remote; TYPE_2__ actual; } ;
struct TYPE_8__ {int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct link_socket*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct signal_info*) ; 

__attribute__((used)) static void
FUNC6(struct link_socket *sock, struct signal_info *sig_info)
{
    FUNC5(&sock->ctrl_sd,
                   sock->info.lsa->current_remote->ai_addr,
                   FUNC3(sock->server_poll_timeout),
                   sig_info);

    if (sig_info->signal_received)
    {
        return;
    }

    FUNC1(sock->socks_proxy,
                                   sock->ctrl_sd,
                                   sock->sd,
                                   &sock->socks_relay.dest,
                                   &sig_info->signal_received);

    if (sig_info->signal_received)
    {
        return;
    }

    sock->remote_host = sock->proxy_dest_host;
    sock->remote_port = sock->proxy_dest_port;

    FUNC0(&sock->info.lsa->actual.dest);
    if (sock->info.lsa->remote_list)
    {
        FUNC2(sock->info.lsa->remote_list);
        sock->info.lsa->current_remote = NULL;
        sock->info.lsa->remote_list = NULL;
    }

    FUNC4(sock, 1, NULL, &sig_info->signal_received);
}