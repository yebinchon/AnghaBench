
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; } ;
typedef TYPE_1__ lwip_socket_obj_t ;


 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 scalar_t__ MP_OBJ_NULL ;
 int mp_sched_schedule (scalar_t__,int ) ;

__attribute__((used)) static inline void exec_user_callback(lwip_socket_obj_t *socket) {
    if (socket->callback != MP_OBJ_NULL) {

        mp_sched_schedule(socket->callback, MP_OBJ_FROM_PTR(socket));
    }
}
