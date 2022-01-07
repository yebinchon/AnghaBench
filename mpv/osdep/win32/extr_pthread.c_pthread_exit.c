
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_thread_info {int handle; void* res; } ;


 int ExitThread (int ) ;
 int assert (struct m_thread_info*) ;
 struct m_thread_info* find_thread_info (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int pthread_table_lock ;
 int remove_thread_info (struct m_thread_info*) ;

void pthread_exit(void *retval)
{
    pthread_mutex_lock(&pthread_table_lock);
    struct m_thread_info *info = find_thread_info(pthread_self());
    assert(info);
    info->res = retval;
    if (!info->handle)
        remove_thread_info(info);
    pthread_mutex_unlock(&pthread_table_lock);

    ExitThread(0);
}
