
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symt {int dummy; } ;
struct codeview_type_parse {int module; } ;
struct TYPE_2__ {struct symt symt; } ;


 int FALSE ;
 int SymTagPointerType ;
 struct symt* codeview_cast_symt (struct symt*,int ) ;
 struct symt* codeview_fetch_type (struct codeview_type_parse*,unsigned int,int ) ;
 TYPE_1__* symt_new_pointer (int ,struct symt*,int) ;

__attribute__((used)) static struct symt* codeview_add_type_pointer(struct codeview_type_parse* ctp,
                                              struct symt* existing,
                                              unsigned int pointee_type)
{
    struct symt* pointee;

    if (existing)
    {
        existing = codeview_cast_symt(existing, SymTagPointerType);
        return existing;
    }
    pointee = codeview_fetch_type(ctp, pointee_type, FALSE);
    return &symt_new_pointer(ctp->module, pointee, sizeof(void *))->symt;
}
