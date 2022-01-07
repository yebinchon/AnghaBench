
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; char const** arg; } ;
typedef TYPE_1__ riscv_args_t ;


 int strcmp (char const*,char*) ;

__attribute__((used)) static const char* arg_n(riscv_args_t* args, int n) {
 if (n >= args->num || !strcmp (args->arg[n], "zero")) {
  return "0";
 }
 return args->arg[n];
}
