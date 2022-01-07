
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ta_header {scalar_t__ canary; TYPE_1__* leak_prev; TYPE_2__* leak_next; } ;
struct TYPE_4__ {TYPE_1__* leak_prev; } ;
struct TYPE_3__ {TYPE_2__* leak_next; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ta_dbg_check_header (struct ta_header*) ;
 int ta_dbg_mutex ;

__attribute__((used)) static void ta_dbg_remove(struct ta_header *h)
{
    ta_dbg_check_header(h);
    if (h->leak_next) {
        pthread_mutex_lock(&ta_dbg_mutex);
        h->leak_next->leak_prev = h->leak_prev;
        h->leak_prev->leak_next = h->leak_next;
        pthread_mutex_unlock(&ta_dbg_mutex);
        h->leak_next = h->leak_prev = ((void*)0);
    }
    h->canary = 0;
}
