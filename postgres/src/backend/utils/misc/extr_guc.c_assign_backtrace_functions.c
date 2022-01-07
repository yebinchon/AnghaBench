
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* backtrace_symbol_list ;

__attribute__((used)) static void
assign_backtrace_functions(const char *newval, void *extra)
{
 backtrace_symbol_list = (char *) extra;
}
