
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_handler_data {int dbghelp; int module_list; int module_name; int cpu_info; int str; int sym_info; } ;


 int FreeLibrary (int ) ;
 int LocalFree (int ) ;
 int dstr_free (int *) ;

__attribute__((used)) static inline void
exception_handler_data_free(struct exception_handler_data *data)
{
 LocalFree(data->sym_info);
 dstr_free(&data->str);
 dstr_free(&data->cpu_info);
 dstr_free(&data->module_name);
 dstr_free(&data->module_list);
 FreeLibrary(data->dbghelp);
}
