
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct cv_defined_module {unsigned int num_defined_types; struct symt** defined_types; int allowed; } ;
typedef int BOOL ;


 unsigned int CV_MAX_MODULES ;
 unsigned int FIRST_DEFINABLE_TYPE ;
 int FIXME (char*,unsigned int,...) ;
 unsigned int MAX_BUILTIN_TYPES ;
 struct symt** cv_basic_types ;
 struct cv_defined_module* cv_current_module ;
 struct cv_defined_module* cv_zmodules ;

__attribute__((used)) static struct symt* codeview_get_type(unsigned int typeno, BOOL quiet)
{
    struct symt* symt = ((void*)0);






    if (typeno < FIRST_DEFINABLE_TYPE)
    {
        if (typeno < MAX_BUILTIN_TYPES)
     symt = cv_basic_types[typeno];
    }
    else
    {
        unsigned mod_index = typeno >> 24;
        unsigned mod_typeno = typeno & 0x00FFFFFF;
        struct cv_defined_module* mod;

        mod = (mod_index == 0) ? cv_current_module : &cv_zmodules[mod_index];

        if (mod_index >= CV_MAX_MODULES || !mod->allowed)
            FIXME("Module of index %d isn't loaded yet (%x)\n", mod_index, typeno);
        else
        {
            if (mod_typeno - FIRST_DEFINABLE_TYPE < mod->num_defined_types)
                symt = mod->defined_types[mod_typeno - FIRST_DEFINABLE_TYPE];
        }
    }
    if (!quiet && !symt && typeno) FIXME("Returning NULL symt for type-id %x\n", typeno);
    return symt;
}
