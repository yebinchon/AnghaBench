#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; int events; } ;
struct TYPE_8__ {scalar_t__ priv; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int retry; int dvr_fd; } ;
typedef  TYPE_2__ dvb_state_t ;
struct TYPE_10__ {TYPE_2__* state; } ;
typedef  TYPE_3__ dvb_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int POLLIN ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (struct pollfd*,int,int) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static int FUNC5(stream_t *stream, void *buffer, int size)
{
    struct pollfd pfds[1];
    int pos = 0, tries, rk, fd;
    dvb_priv_t *priv  = (dvb_priv_t *) stream->priv;
    dvb_state_t *state = priv->state;

    FUNC1(stream, "dvb_streaming_read(%d)\n", size);

    tries = state->retry;
    fd = state->dvr_fd;
    while (pos < size) {
        rk = FUNC4(fd, (char *)buffer + pos, (size - pos));
        if (rk <= 0) {
            if (pos || tries == 0)
                break;
            tries --;
            pfds[0].fd = fd;
            pfds[0].events = POLLIN | POLLPRI;
            if (FUNC3(pfds, 1, 2000) <= 0) {
                FUNC0(stream, "dvb_streaming_read, failed with "
                        "errno %d when reading %d bytes\n", errno, size - pos);
                errno = 0;
                break;
            }
            continue;
        }
        pos += rk;
        FUNC1(stream, "ret (%d) bytes\n", pos);
    }

    if (!pos)
        FUNC0(stream, "dvb_streaming_read, return 0 bytes\n");

    // Check if config parameters have been updated.
    FUNC2(stream);

    return pos;
}