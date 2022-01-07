
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_uchar ;
typedef int zend_bool ;
struct TYPE_3__ {int children; } ;
typedef TYPE_1__ zend_ast_list ;


 int CG (int ) ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 int ZEND_ASSERT (int) ;
 int ZEND_COMPILE_NO_JUMPTABLES ;
 int compiler_options ;

__attribute__((used)) static zend_bool should_use_jumptable(zend_ast_list *cases, zend_uchar jumptable_type) {
 if (CG(compiler_options) & ZEND_COMPILE_NO_JUMPTABLES) {
  return 0;
 }



 if (jumptable_type == IS_LONG) {
  return cases->children >= 5;
 } else {
  ZEND_ASSERT(jumptable_type == IS_STRING);
  return cases->children >= 2;
 }
}
