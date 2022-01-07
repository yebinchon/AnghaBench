
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int fcc; int fci; int count; } ;
typedef TYPE_1__ spl_iterator_apply_info ;


 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_STOP ;
 int zend_fcall_info_call (int *,int *,int *,int *) ;
 scalar_t__ zend_is_true (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_iterator_func_apply(zend_object_iterator *iter, void *puser)
{
 zval retval;
 spl_iterator_apply_info *apply_info = (spl_iterator_apply_info*)puser;
 int result;

 apply_info->count++;
 zend_fcall_info_call(&apply_info->fci, &apply_info->fcc, &retval, ((void*)0));
 result = zend_is_true(&retval) ? ZEND_HASH_APPLY_KEEP : ZEND_HASH_APPLY_STOP;
 zval_ptr_dtor(&retval);
 return result;
}
