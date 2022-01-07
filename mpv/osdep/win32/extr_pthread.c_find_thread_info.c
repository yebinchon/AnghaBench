
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_thread_info {scalar_t__ id; } ;
typedef scalar_t__ DWORD ;


 struct m_thread_info* pthread_table ;
 int pthread_table_num ;

__attribute__((used)) static struct m_thread_info *find_thread_info(DWORD id)
{
    for (int n = 0; n < pthread_table_num; n++) {
        if (id == pthread_table[n].id)
            return &pthread_table[n];
    }
    return ((void*)0);
}
