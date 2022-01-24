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
struct TYPE_3__ {int redir_host_len; unsigned short redir_slot; unsigned short redir_port; int /*<<< orphan*/  redir_host; int /*<<< orphan*/  redir_type; } ;
typedef  TYPE_1__ redisCluster ;

/* Variables and functions */
 int /*<<< orphan*/  ASK_LEN ; 
 int /*<<< orphan*/  MOVED_LEN ; 
 int /*<<< orphan*/  REDIR_ASK ; 
 int /*<<< orphan*/  REDIR_MOVED ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(redisCluster* c, char *msg, int moved)
{
    char *host, *port;

    /* Move past "MOVED" or "ASK */
    msg += moved ? MOVED_LEN : ASK_LEN;

    /* Make sure we can find host */
    if ((host = FUNC1(msg, ' ')) == NULL) return -1;
    *host++ = '\0';

    /* Find port, searching right to left in case of IPv6 */
    if ((port = FUNC3(host, ':')) == NULL) return -1;
    *port++ = '\0';

    // Success, apply it
    c->redir_type = moved ? REDIR_MOVED : REDIR_ASK;
    FUNC2(c->redir_host, host, sizeof(c->redir_host) - 1);
    c->redir_host_len = port - host - 1;
    c->redir_slot = (unsigned short)FUNC0(msg);
    c->redir_port = (unsigned short)FUNC0(port);

    return 0;
}