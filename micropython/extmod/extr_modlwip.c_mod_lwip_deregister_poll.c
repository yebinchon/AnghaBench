
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * poll; } ;


 TYPE_1__ lwip_poll_list ;

void mod_lwip_deregister_poll(void (* poll)(void *arg), void *poll_arg) {
    lwip_poll_list.poll = ((void*)0);
}
