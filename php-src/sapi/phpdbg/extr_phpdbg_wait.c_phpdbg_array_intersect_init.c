
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pos; int ** ht; } ;
typedef TYPE_1__ phpdbg_intersect_ptr ;
typedef int compare_func_t ;
typedef int HashTable ;


 scalar_t__ phpdbg_array_data_compare ;
 int zend_hash_internal_pointer_reset_ex (int *,int *) ;
 int zend_hash_sort (int *,int ,int ) ;

__attribute__((used)) static void phpdbg_array_intersect_init(phpdbg_intersect_ptr *info, HashTable *ht1, HashTable *ht2) {
 info->ht[0] = ht1;
 info->ht[1] = ht2;

 zend_hash_sort(info->ht[0], (compare_func_t) phpdbg_array_data_compare, 0);
 zend_hash_sort(info->ht[1], (compare_func_t) phpdbg_array_data_compare, 0);

 zend_hash_internal_pointer_reset_ex(info->ht[0], &info->pos[0]);
 zend_hash_internal_pointer_reset_ex(info->ht[1], &info->pos[1]);
}
