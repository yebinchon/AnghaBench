
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCEL_LOG_FATAL ;
 int ACCEL_MUTEX_NAME ;
 int CreateMutex (int *,int ,int ) ;
 int FALSE ;
 int ReleaseMutex (int ) ;
 int create_name_with_username (int ) ;
 int memory_mutex ;
 int zend_accel_error (int ,char*) ;

void zend_shared_alloc_create_lock(void)
{
 memory_mutex = CreateMutex(((void*)0), FALSE, create_name_with_username(ACCEL_MUTEX_NAME));
 if (!memory_mutex) {
  zend_accel_error(ACCEL_LOG_FATAL, "Cannot create mutex");
  return;
 }
 ReleaseMutex(memory_mutex);
}
