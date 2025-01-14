
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ timeout_ms; } ;
struct TYPE_5__ {TYPE_1__ sock_base; } ;
typedef TYPE_2__ mod_network_socket_obj_t ;


 int MP_ETIMEDOUT ;
 int SL_EAGAIN ;
 scalar_t__ SOCKET_TIMEOUT_QUANTA_MS ;
 int convert_sl_errno (int) ;
 int mp_hal_delay_ms (scalar_t__) ;

int check_timedout(mod_network_socket_obj_t *s, int ret, uint32_t *timeout_ms, int *_errno) {
    if (*timeout_ms == 0 || ret != SL_EAGAIN) {
        if (s->sock_base.timeout_ms > 0 && ret == SL_EAGAIN) {
            *_errno = MP_ETIMEDOUT;
        } else {
            *_errno = convert_sl_errno(ret);
        }
        return -1;
    }
    mp_hal_delay_ms(SOCKET_TIMEOUT_QUANTA_MS);
    if (*timeout_ms < SOCKET_TIMEOUT_QUANTA_MS) {
        *timeout_ms = 0;
    } else {
        *timeout_ms -= SOCKET_TIMEOUT_QUANTA_MS;
    }
    return 0;
}
