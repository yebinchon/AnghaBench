
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_header {struct ta_header* leak_prev; struct ta_header* leak_next; int canary; } ;


 int CANARY ;
 scalar_t__ enable_leak_check ;
 struct ta_header leak_node ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ta_dbg_mutex ;

__attribute__((used)) static void ta_dbg_add(struct ta_header *h)
{
    h->canary = CANARY;
    if (enable_leak_check) {
        pthread_mutex_lock(&ta_dbg_mutex);
        h->leak_next = &leak_node;
        h->leak_prev = leak_node.leak_prev;
        leak_node.leak_prev->leak_next = h;
        leak_node.leak_prev = h;
        pthread_mutex_unlock(&ta_dbg_mutex);
    }
}
