
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int HashTable ;


 int spl_ce_SplHeap ;
 int * spl_heap_object_get_debug_info_helper (int ,int *,int*) ;

__attribute__((used)) static HashTable* spl_heap_object_get_debug_info(zend_object *obj, int *is_temp)
{
 return spl_heap_object_get_debug_info_helper(spl_ce_SplHeap, obj, is_temp);
}
