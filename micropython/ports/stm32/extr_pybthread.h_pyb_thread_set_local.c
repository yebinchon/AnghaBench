
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ local_state; } ;


 TYPE_1__* pyb_thread_cur ;

__attribute__((used)) static inline void pyb_thread_set_local(void *value) {
    pyb_thread_cur->local_state = (uint32_t)value;
}
