
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ZCG (int ) ;
 int locked ;
 int zend_shared_alloc_unlock () ;

void zend_shared_alloc_safe_unlock(void)
{
 if (ZCG(locked)) {
  zend_shared_alloc_unlock();
 }
}
