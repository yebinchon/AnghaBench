
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _zend_shared_memdup (void*,size_t,int ,int ,int,int ) ;

void *zend_shared_memdup_put(void *source, size_t size)
{
 return _zend_shared_memdup(source, size, 0, 0, 1, 0);
}
