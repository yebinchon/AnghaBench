
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union codeview_type {TYPE_1__ generic; } ;
struct codeview_type_parse {unsigned int num; } ;
typedef int BOOL ;


 unsigned int FIRST_DEFINABLE_TYPE ;
 int TRUE ;
 union codeview_type* codeview_jump_to_type (struct codeview_type_parse*,unsigned int) ;
 int codeview_parse_one_type (struct codeview_type_parse*,unsigned int,union codeview_type const*,int ) ;

__attribute__((used)) static BOOL codeview_parse_type_table(struct codeview_type_parse* ctp)
{
    unsigned int curr_type = FIRST_DEFINABLE_TYPE;
    const union codeview_type* type;

    for (curr_type = FIRST_DEFINABLE_TYPE; curr_type < FIRST_DEFINABLE_TYPE + ctp->num; curr_type++)
    {
        type = codeview_jump_to_type(ctp, curr_type);
        if (!(type->generic.id & 0x8600) || (type->generic.id & 0x0100))
            codeview_parse_one_type(ctp, curr_type, type, TRUE);
    }

    return TRUE;
}
