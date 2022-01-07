
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSMMG (int ) ;
 int shared_free ;

size_t zend_shared_alloc_get_free_memory(void)
{
 return ZSMMG(shared_free);
}
