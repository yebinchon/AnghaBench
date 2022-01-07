
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_3__ {int successors_count; int* successors; } ;
typedef TYPE_1__ zend_basic_block ;



__attribute__((used)) static inline zend_bool is_in_successors(zend_basic_block *block, int check) {
 int s;
 for (s = 0; s < block->successors_count; s++) {
  if (block->successors[s] == check) {
   return 1;
  }
 }
 return 0;
}
