
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* proname; } ;
typedef TYPE_1__ PLyProcedure ;



char *
PLy_procedure_name(PLyProcedure *proc)
{
 if (proc == ((void*)0))
  return "<unknown procedure>";
 return proc->proname;
}
