
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opcode; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_bool ;


 scalar_t__ ZEND_ADD_ARRAY_ELEMENT ;
 scalar_t__ ZEND_ADD_ARRAY_UNPACK ;
 scalar_t__ ZEND_ROPE_ADD ;

__attribute__((used)) static zend_bool is_fake_def(zend_op *opline) {

 return opline->opcode == ZEND_ROPE_ADD
  || opline->opcode == ZEND_ADD_ARRAY_ELEMENT
  || opline->opcode == ZEND_ADD_ARRAY_UNPACK;
}
