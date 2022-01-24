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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ timeout_ms; } ;
struct TYPE_5__ {TYPE_1__ sock_base; } ;
typedef  TYPE_2__ mod_network_socket_obj_t ;

/* Variables and functions */
 int MP_ETIMEDOUT ; 
 int SL_EAGAIN ; 
 scalar_t__ SOCKET_TIMEOUT_QUANTA_MS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(mod_network_socket_obj_t *s, int ret, uint32_t *timeout_ms, int *_errno) {
    if (*timeout_ms == 0 || ret != SL_EAGAIN) {
        if (s->sock_base.timeout_ms > 0 && ret == SL_EAGAIN) {
            *_errno = MP_ETIMEDOUT;
        } else {
            *_errno = FUNC0(ret);
        }
        return -1;
    }
    FUNC1(SOCKET_TIMEOUT_QUANTA_MS);
    if (*timeout_ms < SOCKET_TIMEOUT_QUANTA_MS) {
        *timeout_ms = 0;
    } else {
        *timeout_ms -= SOCKET_TIMEOUT_QUANTA_MS;
    }
    return 0;
}