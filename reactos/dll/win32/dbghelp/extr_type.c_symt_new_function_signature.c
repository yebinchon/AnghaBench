
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tag; } ;
struct symt_function_signature {int call_conv; TYPE_1__ symt; int vchildren; struct symt* rettype; } ;
struct symt {int dummy; } ;
struct module {int pool; } ;
typedef enum CV_call_e { ____Placeholder_CV_call_e } CV_call_e ;


 int SymTagFunctionType ;
 struct symt_function_signature* pool_alloc (int *,int) ;
 int symt_add_type (struct module*,TYPE_1__*) ;
 int vector_init (int *,int,int) ;

struct symt_function_signature* symt_new_function_signature(struct module* module,
                                                            struct symt* ret_type,
                                                            enum CV_call_e call_conv)
{
    struct symt_function_signature* sym;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagFunctionType;
        sym->rettype = ret_type;
        vector_init(&sym->vchildren, sizeof(struct symt*), 4);
        sym->call_conv = call_conv;
        symt_add_type(module, &sym->symt);
    }
    return sym;
}
