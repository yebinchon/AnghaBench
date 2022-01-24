#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int send_interval; int recv_timeout; TYPE_1__ data_to_send; } ;
typedef  TYPE_2__ nn_options_t ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EFSM ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  NN_MSG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int) ; 
 int FUNC5 (int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC10 (nn_options_t *options, int sock)
{
    int rc;
    void *buf;
    uint64_t start_time;
    int64_t time_to_sleep, interval, recv_timeout;

    interval = (int)(options->send_interval*1000);
    recv_timeout = (int)(options->recv_timeout*1000);

    for (;;) {
        start_time = FUNC2();
        rc = FUNC7 (sock,
            options->data_to_send.data, options->data_to_send.length,
            0);
        if (rc < 0 && errno == EAGAIN) {
            FUNC0 (stderr, "Message not sent (EAGAIN)\n");
        } else {
            FUNC1 (rc >= 0, "Can't send");
        }
        if (options->send_interval < 0) {  /*  Never send any more  */
            FUNC6 (options, sock);
            return;
        }

        for (;;) {
            time_to_sleep = (start_time + interval) - FUNC2();
            if (time_to_sleep <= 0) {
                break;
            }
            if (recv_timeout >= 0 && time_to_sleep > recv_timeout)
            {
                time_to_sleep = recv_timeout;
            }
            FUNC8 (sock, (int) time_to_sleep);
            rc = FUNC5 (sock, &buf, NN_MSG, 0);
            if (rc < 0) {
                if (errno == EAGAIN) {
                    continue;
                } else if (errno == ETIMEDOUT || errno == EFSM) {
                    time_to_sleep = (start_time + interval) - FUNC2();
                    if (time_to_sleep > 0)
                        FUNC9 ((int) time_to_sleep);
                    continue;
                }
            }
            FUNC1 (rc >= 0, "Can't recv");
            FUNC4 (options, buf, rc);
            FUNC3 (buf);
        }
    }
}