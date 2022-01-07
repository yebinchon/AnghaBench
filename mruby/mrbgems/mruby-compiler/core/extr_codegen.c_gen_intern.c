
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int codegen_scope ;


 int OP_INTERN ;
 int cursp () ;
 int genop_1 (int *,int ,int ) ;
 int pop () ;
 int push () ;

__attribute__((used)) static void
gen_intern(codegen_scope *s)
{
  pop();
  genop_1(s, OP_INTERN, cursp());
  push();
}
