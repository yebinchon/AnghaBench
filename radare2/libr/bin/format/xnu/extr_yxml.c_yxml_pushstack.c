
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stacklen; int stacksize; unsigned int* stack; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_ESTACK ;
 int YXML_OK ;

__attribute__((used)) static yxml_ret_t yxml_pushstack(yxml_t *x, char **res, unsigned ch) {
 if(x->stacklen+2 >= x->stacksize)
  return YXML_ESTACK;
 x->stacklen++;
 *res = (char *)x->stack+x->stacklen;
 x->stack[x->stacklen] = ch;
 x->stacklen++;
 x->stack[x->stacklen] = 0;
 return YXML_OK;
}
