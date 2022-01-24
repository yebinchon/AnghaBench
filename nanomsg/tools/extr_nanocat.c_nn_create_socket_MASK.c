#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int socket_type; int send_timeout; scalar_t__ recv_timeout; int* socket_name; } ;
typedef  TYPE_1__ nn_options_t ;
typedef  int /*<<< orphan*/  millis ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOCKET_NAME ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
#define  NN_SUB 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int*) ; 

int FUNC6 (nn_options_t *options)
{
    int sock;
    int rc;
    int millis;

    sock = FUNC3 (AF_SP, options->socket_type);
    FUNC0 (sock >= 0, "Can't create socket");

    /* Generic initialization */
    if (options->send_timeout >= 0) {
        millis = (int)(options->send_timeout * 1000);
        rc = FUNC2 (sock, NN_SOL_SOCKET, NN_SNDTIMEO,
                           &millis, sizeof (millis));
        FUNC0 (rc == 0, "Can't set send timeout");
    }
    if (options->recv_timeout >= 0) {
        FUNC1 (sock, (int) options->recv_timeout * 1000);
    }
    if (options->socket_name) {
        rc = FUNC2 (sock, NN_SOL_SOCKET, NN_SOCKET_NAME,
                           options->socket_name, FUNC5(options->socket_name));
        FUNC0 (rc == 0, "Can't set socket name");
    }

    /* Specific initialization */
    switch (options->socket_type) {
    case NN_SUB:
        FUNC4 (options, sock);
        break;
    }

    return sock;
}