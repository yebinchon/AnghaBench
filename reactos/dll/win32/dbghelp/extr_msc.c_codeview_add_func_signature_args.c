
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_5__ {unsigned int num; unsigned int* args; } ;
struct TYPE_4__ {unsigned int num; unsigned int* args; } ;
union codeview_reftype {TYPE_3__ generic; TYPE_2__ arglist_v2; TYPE_1__ arglist_v1; } ;
struct symt_function_signature {int rettype; } ;
struct codeview_type_parse {int module; } ;


 int FALSE ;
 int FIXME (char*,int) ;


 int codeview_fetch_type (struct codeview_type_parse*,unsigned int,int ) ;
 union codeview_reftype* codeview_jump_to_type (struct codeview_type_parse*,unsigned int) ;
 int symt_add_function_signature_parameter (int ,struct symt_function_signature*,int ) ;

__attribute__((used)) static void codeview_add_func_signature_args(struct codeview_type_parse* ctp,
                                             struct symt_function_signature* sym,
                                             unsigned ret_type,
                                             unsigned args_list)
{
    const union codeview_reftype* reftype;

    sym->rettype = codeview_fetch_type(ctp, ret_type, FALSE);
    if (args_list && (reftype = codeview_jump_to_type(ctp, args_list)))
    {
        unsigned int i;
        switch (reftype->generic.id)
        {
        case 129:
            for (i = 0; i < reftype->arglist_v1.num; i++)
                symt_add_function_signature_parameter(ctp->module, sym,
                                                      codeview_fetch_type(ctp, reftype->arglist_v1.args[i], FALSE));
            break;
        case 128:
            for (i = 0; i < reftype->arglist_v2.num; i++)
                symt_add_function_signature_parameter(ctp->module, sym,
                                                      codeview_fetch_type(ctp, reftype->arglist_v2.args[i], FALSE));
            break;
        default:
            FIXME("Unexpected leaf %x for signature's pmt\n", reftype->generic.id);
        }
    }
}
