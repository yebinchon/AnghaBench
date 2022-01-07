
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exception_handler_data {TYPE_1__* sym_info; int process; int (* sym_refresh_module_list ) (int ) ;int (* sym_initialize ) (int ,int *,int) ;int (* sym_set_options ) (int) ;} ;
struct TYPE_2__ {int SizeOfStruct; int MaxNameLen; } ;
typedef int SYMBOL_INFO ;


 int LPTR ;
 TYPE_1__* LocalAlloc (int ,int) ;
 int SYMOPT_FAIL_CRITICAL_ERRORS ;
 int SYMOPT_LOAD_ANYTHING ;
 int SYMOPT_UNDNAME ;
 int stub1 (int) ;
 int stub2 (int ,int *,int) ;
 int stub3 (int ) ;
 int sym_initialize_called ;

__attribute__((used)) static inline void init_sym_info(struct exception_handler_data *data)
{
 data->sym_set_options(SYMOPT_UNDNAME | SYMOPT_FAIL_CRITICAL_ERRORS |
         SYMOPT_LOAD_ANYTHING);

 if (!sym_initialize_called)
  data->sym_initialize(data->process, ((void*)0), 1);
 else
  data->sym_refresh_module_list(data->process);

 data->sym_info = LocalAlloc(LPTR, sizeof(*data->sym_info) + 256);
 data->sym_info->SizeOfStruct = sizeof(SYMBOL_INFO);
 data->sym_info->MaxNameLen = 256;
}
