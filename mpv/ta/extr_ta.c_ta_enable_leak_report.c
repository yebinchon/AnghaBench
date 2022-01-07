
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* leak_next; struct TYPE_2__* leak_prev; } ;


 int atexit (int ) ;
 int enable_leak_check ;
 TYPE_1__ leak_node ;
 int print_leak_report ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ta_dbg_mutex ;

void ta_enable_leak_report(void)
{
    pthread_mutex_lock(&ta_dbg_mutex);
    enable_leak_check = 1;
    if (!leak_node.leak_prev && !leak_node.leak_next) {
        leak_node.leak_prev = &leak_node;
        leak_node.leak_next = &leak_node;
        atexit(print_leak_report);
    }
    pthread_mutex_unlock(&ta_dbg_mutex);
}
