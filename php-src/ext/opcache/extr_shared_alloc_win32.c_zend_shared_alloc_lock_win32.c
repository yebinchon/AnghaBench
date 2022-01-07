
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int ACCEL_LOG_ERROR ;
 int INFINITE ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int memory_mutex ;
 int zend_accel_error (int ,char*) ;

void zend_shared_alloc_lock_win32(void)
{
 DWORD waitRes = WaitForSingleObject(memory_mutex, INFINITE);

 if (waitRes == WAIT_FAILED) {
  zend_accel_error(ACCEL_LOG_ERROR, "Cannot lock mutex");
 }
}
