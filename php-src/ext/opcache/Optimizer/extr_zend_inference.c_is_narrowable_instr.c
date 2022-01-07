
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opcode; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_bool ;


 scalar_t__ ZEND_ADD ;
 scalar_t__ ZEND_DIV ;
 scalar_t__ ZEND_MUL ;
 scalar_t__ ZEND_SUB ;

__attribute__((used)) static zend_bool is_narrowable_instr(zend_op *opline) {
 return opline->opcode == ZEND_ADD || opline->opcode == ZEND_SUB
  || opline->opcode == ZEND_MUL || opline->opcode == ZEND_DIV;
}
