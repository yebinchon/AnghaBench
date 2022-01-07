
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_thread_info {struct m_thread_info* handle; } ;
typedef int pthread_t ;


 int CloseHandle (struct m_thread_info*) ;
 int abort () ;
 int assert (struct m_thread_info*) ;
 struct m_thread_info* find_thread_info (int ) ;
 int pthread_equal (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int pthread_table_lock ;

int pthread_detach(pthread_t thread)
{
    if (!pthread_equal(thread, pthread_self()))
        abort();

    pthread_mutex_lock(&pthread_table_lock);
    struct m_thread_info *info = find_thread_info(thread);
    assert(info);
    assert(info->handle);
    CloseHandle(info->handle);
    info->handle = ((void*)0);
    pthread_mutex_unlock(&pthread_table_lock);

    return 0;
}
