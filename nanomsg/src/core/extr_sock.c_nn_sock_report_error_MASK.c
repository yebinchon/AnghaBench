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
struct nn_sock {char* socket_name; } ;
struct nn_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 char* FUNC1 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (struct nn_sock *self, struct nn_ep *ep, int errnum)
{
    if (!FUNC2())
        return;

    if (errnum == 0)
        return;

    if (ep) {
        FUNC0(stderr, "nanomsg: socket.%s[%s]: Error: %s\n",
            self->socket_name, FUNC1(ep), FUNC3(errnum));
    } else {
        FUNC0(stderr, "nanomsg: socket.%s: Error: %s\n",
            self->socket_name, FUNC3(errnum));
    }
}