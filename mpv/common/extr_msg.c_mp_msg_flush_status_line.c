
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {scalar_t__ root; } ;


 int flush_status_line (scalar_t__) ;
 int mp_msg_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_msg_flush_status_line(struct mp_log *log)
{
    pthread_mutex_lock(&mp_msg_lock);
    if (log->root)
        flush_status_line(log->root);
    pthread_mutex_unlock(&mp_msg_lock);
}
