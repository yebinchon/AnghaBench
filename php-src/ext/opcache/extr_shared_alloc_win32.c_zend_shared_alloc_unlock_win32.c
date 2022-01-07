
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ReleaseMutex (int ) ;
 int memory_mutex ;

void zend_shared_alloc_unlock_win32(void)
{
 ReleaseMutex(memory_mutex);
}
