
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmx_pes_filter_params {int flags; int pes_type; int output; int input; int pid; } ;
typedef int dvb_priv_t ;
typedef int dmx_pes_type_t ;


 int DMX_IMMEDIATE_START ;
 int DMX_IN_FRONTEND ;
 int DMX_OUT_TS_TAP ;
 int DMX_SET_BUFFER_SIZE ;
 int DMX_SET_PES_FILTER ;
 int MP_ERR (int *,char*,int ,int,scalar_t__) ;
 int MP_VERBOSE (int *,char*,int ,int,int,scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,...) ;

int dvb_set_ts_filt(dvb_priv_t *priv, int fd, uint16_t pid,
                    dmx_pes_type_t pestype)
{
    int i;
    struct dmx_pes_filter_params pesFilterParams;

    pesFilterParams.pid = pid;
    pesFilterParams.input = DMX_IN_FRONTEND;
    pesFilterParams.output = DMX_OUT_TS_TAP;
    pesFilterParams.pes_type = pestype;
    pesFilterParams.flags = DMX_IMMEDIATE_START;

    {
        int buffersize = 256 * 1024;
        if (ioctl(fd, DMX_SET_BUFFER_SIZE, buffersize) < 0)
            MP_ERR(priv, "ERROR IN DMX_SET_BUFFER_SIZE %i for fd %d: ERRNO: %d\n",
                   pid, fd, errno);
    }

    errno = 0;
    if ((i = ioctl(fd, DMX_SET_PES_FILTER, &pesFilterParams)) < 0) {
        MP_ERR(priv, "ERROR IN SETTING DMX_FILTER %i for fd %d: ERRNO: %d\n",
               pid, fd, errno);
        return 0;
    }

    MP_VERBOSE(priv, "SET PES FILTER ON PID %d to fd %d, RESULT: %d, ERRNO: %d\n",
               pid, fd, i, errno);
    return 1;
}
