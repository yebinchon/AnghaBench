
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const_wanted ;
 int expr_cond () ;

__attribute__((used)) static void expr_const1(void) {
 int a;
 a = const_wanted;
 const_wanted = 1;
 expr_cond ();
 const_wanted = a;
}
