#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct web_client {int /*<<< orphan*/  pollinfo_slot; int /*<<< orphan*/  port_acl; int /*<<< orphan*/ * client_port; int /*<<< orphan*/ * client_ip; int /*<<< orphan*/ * client_host; int /*<<< orphan*/  ofd; int /*<<< orphan*/  ifd; } ;
struct TYPE_3__ {int /*<<< orphan*/  slot; int /*<<< orphan*/  port_acl; int /*<<< orphan*/  client_host; int /*<<< orphan*/  client_port; int /*<<< orphan*/  client_ip; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct web_client* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct web_client*) ; 

__attribute__((used)) static struct web_client *FUNC5(POLLINFO *pi) {
    struct web_client *w;

    w = FUNC3();
    w->ifd = w->ofd = pi->fd;

    FUNC1(w->client_ip,   pi->client_ip,   sizeof(w->client_ip) - 1);
    FUNC1(w->client_port, pi->client_port, sizeof(w->client_port) - 1);
    FUNC1(w->client_host, pi->client_host, sizeof(w->client_host) - 1);

    if(FUNC2(!*w->client_ip))   FUNC0(w->client_ip,   "-");
    if(FUNC2(!*w->client_port)) FUNC0(w->client_port, "-");
	w->port_acl = pi->port_acl;

    FUNC4(w);
    w->pollinfo_slot = pi->slot;
    return(w);
}