
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object_iterator ;
typedef int zend_long ;


 int ZEND_HASH_APPLY_KEEP ;

__attribute__((used)) static int spl_iterator_count_apply(zend_object_iterator *iter, void *puser)
{
 (*(zend_long*)puser)++;
 return ZEND_HASH_APPLY_KEEP;
}
