
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t cur_adapter; int demux_fds_cnt; unsigned int* demux_fds; TYPE_1__* adapters; } ;
typedef TYPE_2__ dvb_state_t ;
struct TYPE_9__ {TYPE_2__* state; } ;
typedef TYPE_3__ dvb_priv_t ;
typedef int demux_dev ;
struct TYPE_7__ {int devno; } ;


 int MP_ERR (TYPE_3__*,char*,int ) ;
 int MP_VERBOSE (TYPE_3__*,char*,int,unsigned int) ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PATH_MAX ;
 int close (unsigned int) ;
 int errno ;
 unsigned int open (char*,int) ;
 int snprintf (char*,int,char*,int) ;

int dvb_fix_demuxes(dvb_priv_t *priv, unsigned int cnt)
{
    int i;
    char demux_dev[PATH_MAX];

    dvb_state_t* state = priv->state;

    snprintf(demux_dev, sizeof(demux_dev), "/dev/dvb/adapter%d/demux0",
            state->adapters[state->cur_adapter].devno);
    MP_VERBOSE(priv, "FIX %d -> %d\n", state->demux_fds_cnt, cnt);
    if (state->demux_fds_cnt >= cnt) {
        for (i = state->demux_fds_cnt - 1; i >= (int)cnt; i--) {
            MP_VERBOSE(priv, "FIX, CLOSE fd(%d): %d\n", i, state->demux_fds[i]);
            close(state->demux_fds[i]);
        }
        state->demux_fds_cnt = cnt;
    } else {
        for (i = state->demux_fds_cnt; i < cnt; i++) {
            state->demux_fds[i] = open(demux_dev,
                                      O_RDWR | O_NONBLOCK | O_CLOEXEC);
            MP_VERBOSE(priv, "FIX, OPEN fd(%d): %d\n", i, state->demux_fds[i]);
            if (state->demux_fds[i] < 0) {
                MP_ERR(priv, "ERROR OPENING DEMUX 0: %d\n", errno);
                return 0;
            } else
                state->demux_fds_cnt++;
        }
    }

    return 1;
}
