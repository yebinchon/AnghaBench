
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opcode; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_bool ;


 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_BIND_LEXICAL ;
 scalar_t__ ZEND_CASE ;
 scalar_t__ ZEND_COPY_TMP ;
 scalar_t__ ZEND_FETCH_LIST_R ;
 scalar_t__ ZEND_FETCH_LIST_W ;
 scalar_t__ ZEND_FE_FETCH_R ;
 scalar_t__ ZEND_FE_FETCH_RW ;
 scalar_t__ ZEND_ROPE_ADD ;
 scalar_t__ ZEND_SWITCH_LONG ;
 scalar_t__ ZEND_SWITCH_STRING ;
 scalar_t__ ZEND_VERIFY_RETURN_TYPE ;

__attribute__((used)) static zend_bool keeps_op1_alive(zend_op *opline) {


 if (opline->opcode == ZEND_CASE
  || opline->opcode == ZEND_SWITCH_LONG
  || opline->opcode == ZEND_FETCH_LIST_R
  || opline->opcode == ZEND_COPY_TMP) {
  return 1;
 }
 ZEND_ASSERT(opline->opcode != ZEND_SWITCH_STRING
  && opline->opcode != ZEND_FE_FETCH_R
  && opline->opcode != ZEND_FE_FETCH_RW
  && opline->opcode != ZEND_FETCH_LIST_W
  && opline->opcode != ZEND_VERIFY_RETURN_TYPE
  && opline->opcode != ZEND_BIND_LEXICAL
  && opline->opcode != ZEND_ROPE_ADD);
 return 0;
}
