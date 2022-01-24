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
struct nn_cws {int /*<<< orphan*/  state; int /*<<< orphan*/  dns_result; int /*<<< orphan*/  remote_hostname_len; int /*<<< orphan*/  dns; int /*<<< orphan*/  remote_host; int /*<<< orphan*/  ep; } ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CWS_STATE_RESOLVING ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5 (struct nn_cws *self)
{
    int ipv4only;
    size_t ipv4onlylen;
    char *host;

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC3 (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY,
        &ipv4only, &ipv4onlylen);
    FUNC0 (ipv4onlylen == sizeof (ipv4only));

    host = FUNC1 (&self->remote_host);
    FUNC0 (FUNC4 (host) > 0);

    FUNC2 (&self->dns, host, self->remote_hostname_len, ipv4only,
        &self->dns_result);

    self->state = NN_CWS_STATE_RESOLVING;
}