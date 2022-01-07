
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct symt_function_signature {struct symt symt; } ;
struct codeview_type_parse {int module; } ;
typedef enum CV_call_e { ____Placeholder_CV_call_e } CV_call_e ;


 int SymTagFunctionType ;
 struct symt_function_signature* codeview_cast_symt (struct symt*,int ) ;
 struct symt_function_signature* symt_new_function_signature (int ,int *,int) ;

__attribute__((used)) static struct symt* codeview_new_func_signature(struct codeview_type_parse* ctp,
                                                struct symt* existing,
                                                enum CV_call_e call_conv)
{
    struct symt_function_signature* sym;

    if (existing)
    {
        sym = codeview_cast_symt(existing, SymTagFunctionType);
        if (!sym) return ((void*)0);
    }
    else
    {
        sym = symt_new_function_signature(ctp->module, ((void*)0), call_conv);
    }
    return &sym->symt;
}
