
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCEL_LOG_FATAL ;
 int errno ;
 int strerror (int ) ;
 int zend_accel_error (int ,char*,size_t,char*,int ,int ) ;

__attribute__((used)) static void no_memory_bailout(size_t allocate_size, char *error)
{
 zend_accel_error(ACCEL_LOG_FATAL, "Unable to allocate shared memory segment of %zu bytes: %s: %s (%d)", allocate_size, error?error:"unknown", strerror(errno), errno );
}
