#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ priv; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int switching_channel; int* demux_fds; int dvr_fd; int fe_fd; int cur_adapter; int cur_frontend; scalar_t__ is_on; int /*<<< orphan*/  demux_fds_cnt; } ;
typedef  TYPE_2__ dvb_state_t ;
struct TYPE_10__ {TYPE_2__* state; } ;
typedef  TYPE_3__ dvb_priv_t ;
struct TYPE_11__ {int stream_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_4__* global_dvb_state ; 
 int /*<<< orphan*/  global_dvb_state_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(stream_t *stream)
{
    dvb_priv_t *priv  = (dvb_priv_t *) stream->priv;
    dvb_state_t *state = priv->state;

    if (state->switching_channel && state->is_on) {
      // Prevent state destruction, reset channel-switch.
      state->switching_channel = false;
      FUNC3(&global_dvb_state_lock);
      global_dvb_state->stream_used = false;
      FUNC4(&global_dvb_state_lock);
      return;
    }

    for (int i = state->demux_fds_cnt - 1; i >= 0; i--) {
        state->demux_fds_cnt--;
        FUNC0(stream, "DVBIN_CLOSE, close(%d), fd=%d, COUNT=%d\n", i,
                   state->demux_fds[i], state->demux_fds_cnt);
        FUNC1(state->demux_fds[i]);
    }
    FUNC1(state->dvr_fd);
    FUNC1(state->fe_fd);
    state->fe_fd = state->dvr_fd = -1;

    state->is_on = 0;
    state->cur_adapter = -1;
    state->cur_frontend = -1;

    FUNC3(&global_dvb_state_lock);
    FUNC2(state);
    global_dvb_state = NULL;
    FUNC4(&global_dvb_state_lock);
}