
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pronargs; } ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int ERROR ;
 int GETSTRUCT (int ) ;
 int elog (int ,char*) ;
 int * fetch_function_defaults (int ) ;
 int * list_concat_copy (int *,int *) ;
 int * list_copy_tail (int *,int) ;
 int list_length (int *) ;

__attribute__((used)) static List *
add_function_defaults(List *args, HeapTuple func_tuple)
{
 Form_pg_proc funcform = (Form_pg_proc) GETSTRUCT(func_tuple);
 int nargsprovided = list_length(args);
 List *defaults;
 int ndelete;


 defaults = fetch_function_defaults(func_tuple);


 ndelete = nargsprovided + list_length(defaults) - funcform->pronargs;
 if (ndelete < 0)
  elog(ERROR, "not enough default arguments");
 if (ndelete > 0)
  defaults = list_copy_tail(defaults, ndelete);


 return list_concat_copy(args, defaults);
}
