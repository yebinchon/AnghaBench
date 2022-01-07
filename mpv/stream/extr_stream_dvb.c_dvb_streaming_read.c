
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pollfd {int fd; int events; } ;
struct TYPE_8__ {scalar_t__ priv; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int retry; int dvr_fd; } ;
typedef TYPE_2__ dvb_state_t ;
struct TYPE_10__ {TYPE_2__* state; } ;
typedef TYPE_3__ dvb_priv_t ;


 int MP_ERR (TYPE_1__*,char*,...) ;
 int MP_TRACE (TYPE_1__*,char*,int) ;
 int POLLIN ;
 int POLLPRI ;
 int dvb_update_config (TYPE_1__*) ;
 scalar_t__ errno ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static int dvb_streaming_read(stream_t *stream, void *buffer, int size)
{
    struct pollfd pfds[1];
    int pos = 0, tries, rk, fd;
    dvb_priv_t *priv = (dvb_priv_t *) stream->priv;
    dvb_state_t *state = priv->state;

    MP_TRACE(stream, "dvb_streaming_read(%d)\n", size);

    tries = state->retry;
    fd = state->dvr_fd;
    while (pos < size) {
        rk = read(fd, (char *)buffer + pos, (size - pos));
        if (rk <= 0) {
            if (pos || tries == 0)
                break;
            tries --;
            pfds[0].fd = fd;
            pfds[0].events = POLLIN | POLLPRI;
            if (poll(pfds, 1, 2000) <= 0) {
                MP_ERR(stream, "dvb_streaming_read, failed with "
                        "errno %d when reading %d bytes\n", errno, size - pos);
                errno = 0;
                break;
            }
            continue;
        }
        pos += rk;
        MP_TRACE(stream, "ret (%d) bytes\n", pos);
    }

    if (!pos)
        MP_ERR(stream, "dvb_streaming_read, return 0 bytes\n");


    dvb_update_config(stream);

    return pos;
}
