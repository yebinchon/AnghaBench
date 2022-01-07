
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ local_state; } ;


 TYPE_1__* pyb_thread_cur ;

__attribute__((used)) static inline void *pyb_thread_get_local(void) {
    return (void*)pyb_thread_cur->local_state;
}
