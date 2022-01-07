
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* var_info; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_bool ;
struct TYPE_4__ {int type; } ;


 int MAY_BE_REF ;

__attribute__((used)) static inline zend_bool is_bad_mod(const zend_ssa *ssa, int use, int def) {
 if (def < 0) {

  return 1;
 }
 if (ssa->var_info[use].type & MAY_BE_REF) {

  return 1;
 }
 return 0;
}
