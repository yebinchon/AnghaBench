#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int send_interval; TYPE_1__ data_to_send; } ;
typedef  TYPE_2__ nn_options_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5 (nn_options_t *options, int sock)
{
    int rc;
    uint64_t start_time;
    int64_t time_to_sleep, interval;

    interval = (int)(options->send_interval*1000);

    for (;;) {
        start_time = FUNC2();
        rc = FUNC3 (sock,
            options->data_to_send.data, options->data_to_send.length,
            0);
        if (rc < 0 && errno == EAGAIN) {
            FUNC0 (stderr, "Message not sent (EAGAIN)\n");
        } else {
            FUNC1 (rc >= 0, "Can't send");
        }
        if (interval >= 0) {
            time_to_sleep = (start_time + interval) - FUNC2();
            if (time_to_sleep > 0) {
                FUNC4 ((int) time_to_sleep);
            }
        } else {
            break;
        }
    }
}