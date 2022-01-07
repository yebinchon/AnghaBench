
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char last; } ;
typedef TYPE_1__ mpc_input_t ;


 char mpc_input_peekc (TYPE_1__*) ;

__attribute__((used)) static int mpc_input_anchor(mpc_input_t* i, int(*f)(char,char), char **o) {
  *o = ((void*)0);
  return f(i->last, mpc_input_peekc(i));
}
