
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code_align; } ;
typedef int RAsmOp ;
typedef TYPE_1__ RAsmCode ;


 int r_num_math (int *,char*) ;

__attribute__((used)) static int r_asm_pseudo_align(RAsmCode *acode, RAsmOp *op, char *input) {
 acode->code_align = r_num_math (((void*)0), input);
 return 0;
}
