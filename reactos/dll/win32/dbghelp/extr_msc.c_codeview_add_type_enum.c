
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union codeview_reftype {int dummy; } codeview_reftype ;
struct symt {int dummy; } ;
struct symt_enum {struct symt symt; } ;
struct codeview_type_parse {int module; } ;


 int FALSE ;
 int SymTagEnum ;
 int codeview_add_type_enum_field_list (int ,struct symt_enum*,union codeview_reftype const*) ;
 struct symt_enum* codeview_cast_symt (struct symt*,int ) ;
 int codeview_fetch_type (struct codeview_type_parse*,unsigned int,int ) ;
 union codeview_reftype* codeview_jump_to_type (struct codeview_type_parse*,unsigned int) ;
 struct symt_enum* symt_new_enum (int ,char const*,int ) ;

__attribute__((used)) static struct symt* codeview_add_type_enum(struct codeview_type_parse* ctp,
                                           struct symt* existing,
                                           const char* name,
                                           unsigned fieldlistno,
                                           unsigned basetype)
{
    struct symt_enum* symt;

    if (existing)
    {
        if (!(symt = codeview_cast_symt(existing, SymTagEnum))) return ((void*)0);

    }
    else
    {
        symt = symt_new_enum(ctp->module, name,
                             codeview_fetch_type(ctp, basetype, FALSE));
        if (fieldlistno)
        {
            const union codeview_reftype* fieldlist;
            fieldlist = codeview_jump_to_type(ctp, fieldlistno);
            codeview_add_type_enum_field_list(ctp->module, symt, fieldlist);
        }
    }
    return &symt->symt;
}
