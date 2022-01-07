
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 scalar_t__ YXMLS_misc3 ;
 int YXML_EEOF ;
 int YXML_OK ;

yxml_ret_t yxml_eof(yxml_t *x) {
 if(x->state != YXMLS_misc3)
  return YXML_EEOF;
 return YXML_OK;
}
