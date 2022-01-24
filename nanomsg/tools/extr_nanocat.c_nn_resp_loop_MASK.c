#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_1__ data_to_send; } ;
typedef  TYPE_2__ nn_options_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  NN_MSG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,int) ; 
 int FUNC4 (int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6 (nn_options_t *options, int sock)
{
    int rc;
    void *buf;

    for (;;) {
        rc = FUNC4 (sock, &buf, NN_MSG, 0);
        if (rc < 0 && errno == EAGAIN) {
                continue;
        } else {
            FUNC1 (rc >= 0, "Can't recv");
        }
        FUNC3 (options, buf, rc);
        FUNC2 (buf);
        rc = FUNC5 (sock,
            options->data_to_send.data, options->data_to_send.length,
            0);
        if (rc < 0 && errno == EAGAIN) {
            FUNC0 (stderr, "Message not sent (EAGAIN)\n");
        } else {
            FUNC1 (rc >= 0, "Can't send");
        }
    }
}