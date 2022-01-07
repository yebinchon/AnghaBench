
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_accel_globals ;


 int ZEND_TSRMLS_CACHE_UPDATE () ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void accel_globals_ctor(zend_accel_globals *accel_globals)
{



 memset(accel_globals, 0, sizeof(zend_accel_globals));
}
