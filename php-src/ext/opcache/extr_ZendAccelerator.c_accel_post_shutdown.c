
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zend_shared_alloc_shutdown () ;

__attribute__((used)) static void accel_post_shutdown(void)
{
 zend_shared_alloc_shutdown();
}
