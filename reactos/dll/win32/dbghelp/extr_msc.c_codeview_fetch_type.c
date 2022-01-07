
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union codeview_type {int dummy; } codeview_type ;
struct symt {int dummy; } ;
struct codeview_type_parse {int dummy; } ;
typedef int BOOL ;


 int FIXME (char*,unsigned int) ;
 int TRUE ;
 struct symt* codeview_get_type (unsigned int,int ) ;
 union codeview_type* codeview_jump_to_type (struct codeview_type_parse*,unsigned int) ;
 struct symt* codeview_parse_one_type (struct codeview_type_parse*,unsigned int,union codeview_type const*,int ) ;

__attribute__((used)) static struct symt* codeview_fetch_type(struct codeview_type_parse* ctp,
                                        unsigned typeno, BOOL details)
{
    struct symt* symt;
    const union codeview_type* p;

    if (!typeno) return ((void*)0);
    if ((symt = codeview_get_type(typeno, TRUE))) return symt;


    if (!(p = codeview_jump_to_type(ctp, typeno)))
    {
        FIXME("Cannot locate type %x\n", typeno);
        return ((void*)0);
    }
    symt = codeview_parse_one_type(ctp, typeno, p, details);
    if (!symt) FIXME("Couldn't load forward type %x\n", typeno);
    return symt;
}
