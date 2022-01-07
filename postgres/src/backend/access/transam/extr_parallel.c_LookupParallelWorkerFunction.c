
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parallel_worker_main_type ;
struct TYPE_3__ {char const* fn_name; int fn_addr; } ;


 int ERROR ;
 TYPE_1__* InternalParallelWorkers ;
 int elog (int ,char*,char const*) ;
 int lengthof (TYPE_1__*) ;
 int load_external_function (char const*,char const*,int,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static parallel_worker_main_type
LookupParallelWorkerFunction(const char *libraryname, const char *funcname)
{




 if (strcmp(libraryname, "postgres") == 0)
 {
  int i;

  for (i = 0; i < lengthof(InternalParallelWorkers); i++)
  {
   if (strcmp(InternalParallelWorkers[i].fn_name, funcname) == 0)
    return InternalParallelWorkers[i].fn_addr;
  }


  elog(ERROR, "internal function \"%s\" not found", funcname);
 }


 return (parallel_worker_main_type)
  load_external_function(libraryname, funcname, 1, ((void*)0));
}
