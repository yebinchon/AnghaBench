#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct env_set {int dummy; } ;
struct connection_entry {scalar_t__ socks_proxy_port; scalar_t__ socks_proxy_server; TYPE_1__* http_proxy_options; scalar_t__ remote_port; scalar_t__ remote; scalar_t__ local_port; scalar_t__ local; int /*<<< orphan*/  af; int /*<<< orphan*/  proto; } ;
struct TYPE_2__ {scalar_t__ port; scalar_t__ server; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct env_set*,char*,scalar_t__,int const) ; 

__attribute__((used)) static void
FUNC2(struct env_set *es,
                        const struct connection_entry *e,
                        const int i)
{
    FUNC1(es, "proto", FUNC0(e->proto, e->af, false), i);
    FUNC1(es, "local", e->local, i);
    FUNC1(es, "local_port", e->local_port, i);
    FUNC1(es, "remote", e->remote, i);
    FUNC1(es, "remote_port", e->remote_port, i);

    if (e->http_proxy_options)
    {
        FUNC1(es, "http_proxy_server", e->http_proxy_options->server, i);
        FUNC1(es, "http_proxy_port", e->http_proxy_options->port, i);
    }
    if (e->socks_proxy_server)
    {
        FUNC1(es, "socks_proxy_server", e->socks_proxy_server, i);
        FUNC1(es, "socks_proxy_port", e->socks_proxy_port, i);
    }
}