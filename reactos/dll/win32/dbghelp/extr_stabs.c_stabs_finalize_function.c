
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct symt_function {unsigned long size; scalar_t__ address; } ;
struct module {int dummy; } ;
struct location {scalar_t__ offset; int kind; } ;
struct TYPE_4__ {scalar_t__ Address; } ;
typedef TYPE_1__ IMAGEHLP_LINE64 ;


 int SymTagFuncDebugStart ;
 int loc_absolute ;
 int symt_add_function_point (struct module*,struct symt_function*,int ,struct location*,int *) ;
 scalar_t__ symt_fill_func_line_info (struct module*,struct symt_function*,scalar_t__,TYPE_1__*) ;
 scalar_t__ symt_get_func_line_next (struct module*,TYPE_1__*) ;
 int symt_normalize_function (struct module*,struct symt_function*) ;

__attribute__((used)) static void stabs_finalize_function(struct module* module, struct symt_function* func,
                                    unsigned long size)
{
    IMAGEHLP_LINE64 il;
    struct location loc;

    if (!func) return;
    symt_normalize_function(module, func);



    if (symt_fill_func_line_info(module, func, func->address, &il) &&
        symt_get_func_line_next(module, &il))
    {
        loc.kind = loc_absolute;
        loc.offset = il.Address - func->address;
        symt_add_function_point(module, func, SymTagFuncDebugStart,
                                &loc, ((void*)0));
    }
    if (size) func->size = size;
}
