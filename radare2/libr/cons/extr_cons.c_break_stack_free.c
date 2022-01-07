
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RConsBreakStack ;


 int free (int *) ;

__attribute__((used)) static void break_stack_free(void *ptr) {
 RConsBreakStack *b = (RConsBreakStack*)ptr;
 free (b);
}
