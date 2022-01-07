
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;


 int IS_ARRAY ;
 int IS_OBJECT ;
 int PARTIAL_ARRAY ;
 int PARTIAL_OBJECT ;
 int ZVAL_BOOL (int *,int) ;
 int Z_TYPE_P (int *) ;

__attribute__((used)) static inline void ct_eval_type_check(zval *result, uint32_t type_mask, zval *op1) {
 uint32_t type = Z_TYPE_P(op1);
 if (type == PARTIAL_ARRAY) {
  type = IS_ARRAY;
 } else if (type == PARTIAL_OBJECT) {
  type = IS_OBJECT;
 }
 ZVAL_BOOL(result, (type_mask >> type) & 1);
}
