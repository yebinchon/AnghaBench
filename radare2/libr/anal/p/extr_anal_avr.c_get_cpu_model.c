
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int model; } ;
typedef TYPE_1__ CPU_MODEL ;


 TYPE_1__* __get_cpu_model_recursive (char*) ;
 int r_str_casecmp (char*,int ) ;

__attribute__((used)) static CPU_MODEL *get_cpu_model(char *model) {
 static CPU_MODEL *cpu = ((void*)0);

 if (cpu && !r_str_casecmp (model, cpu->model)) {
  return cpu;
 }

 cpu = __get_cpu_model_recursive (model);
 return cpu;
}
