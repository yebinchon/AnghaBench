
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int * pos; int ** ht; } ;
typedef TYPE_1__ phpdbg_intersect_ptr ;


 int zend_binary_zval_strcmp (int *,int *) ;
 int * zend_hash_get_current_data_ex (int *,int *) ;
 int zend_hash_move_forward_ex (int *,int *) ;

__attribute__((used)) static int phpdbg_array_intersect(phpdbg_intersect_ptr *info, zval **ptr) {
 int ret;
 zval *zvp[2];
 int invalid = !info->ht[0] + !info->ht[1];

 if (invalid > 0) {
  invalid = !info->ht[0];

  if (!(*ptr = zend_hash_get_current_data_ex(info->ht[invalid], &info->pos[invalid]))) {
   return 0;
  }

  zend_hash_move_forward_ex(info->ht[invalid], &info->pos[invalid]);

  return invalid ? 1 : -1;
 }

 if (!(zvp[0] = zend_hash_get_current_data_ex(info->ht[0], &info->pos[0]))) {
  info->ht[0] = ((void*)0);
  return phpdbg_array_intersect(info, ptr);
 }
 if (!(zvp[1] = zend_hash_get_current_data_ex(info->ht[1], &info->pos[1]))) {
  info->ht[1] = ((void*)0);
  return phpdbg_array_intersect(info, ptr);
 }

 ret = zend_binary_zval_strcmp(zvp[0], zvp[1]);

 if (ret <= 0) {
  *ptr = zvp[0];
  zend_hash_move_forward_ex(info->ht[0], &info->pos[0]);
 }
 if (ret >= 0) {
  *ptr = zvp[1];
  zend_hash_move_forward_ex(info->ht[1], &info->pos[1]);
 }

 return ret;
}
