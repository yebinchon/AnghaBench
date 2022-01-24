#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t cur_adapter; int demux_fds_cnt; unsigned int* demux_fds; TYPE_1__* adapters; } ;
typedef  TYPE_2__ dvb_state_t ;
struct TYPE_9__ {TYPE_2__* state; } ;
typedef  TYPE_3__ dvb_priv_t ;
typedef  int /*<<< orphan*/  demux_dev ;
struct TYPE_7__ {int devno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int,unsigned int) ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 unsigned int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int FUNC5(dvb_priv_t *priv, unsigned int cnt)
{
    int i;
    char demux_dev[PATH_MAX];

    dvb_state_t* state = priv->state;

    FUNC4(demux_dev, sizeof(demux_dev), "/dev/dvb/adapter%d/demux0",
            state->adapters[state->cur_adapter].devno);
    FUNC1(priv, "FIX %d -> %d\n", state->demux_fds_cnt, cnt);
    if (state->demux_fds_cnt >= cnt) {
        for (i = state->demux_fds_cnt - 1; i >= (int)cnt; i--) {
            FUNC1(priv, "FIX, CLOSE fd(%d): %d\n", i, state->demux_fds[i]);
            FUNC2(state->demux_fds[i]);
        }
        state->demux_fds_cnt = cnt;
    } else {
        for (i = state->demux_fds_cnt; i < cnt; i++) {
            state->demux_fds[i] = FUNC3(demux_dev,
                                      O_RDWR | O_NONBLOCK | O_CLOEXEC);
            FUNC1(priv, "FIX, OPEN fd(%d): %d\n", i, state->demux_fds[i]);
            if (state->demux_fds[i] < 0) {
                FUNC0(priv, "ERROR OPENING DEMUX 0: %d\n", errno);
                return 0;
            } else
                state->demux_fds_cnt++;
        }
    }

    return 1;
}