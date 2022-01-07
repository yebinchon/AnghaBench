
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symt {int dummy; } ;
struct codeview_type_parse {int module; } ;
struct TYPE_2__ {struct symt symt; } ;


 int FALSE ;
 struct symt* codeview_fetch_type (struct codeview_type_parse*,unsigned int,int ) ;
 TYPE_1__* symt_new_array (int ,int ,unsigned int,struct symt*,struct symt*) ;

__attribute__((used)) static struct symt* codeview_add_type_array(struct codeview_type_parse* ctp,
                                            const char* name,
                                            unsigned int elemtype,
                                            unsigned int indextype,
                                            unsigned int arr_len)
{
    struct symt* elem = codeview_fetch_type(ctp, elemtype, FALSE);
    struct symt* index = codeview_fetch_type(ctp, indextype, FALSE);

    return &symt_new_array(ctp->module, 0, -arr_len, elem, index)->symt;
}
