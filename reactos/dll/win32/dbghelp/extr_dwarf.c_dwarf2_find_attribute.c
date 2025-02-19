
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int uvalue; } ;
struct attribute {TYPE_2__ u; int gotten_from; } ;
struct TYPE_13__ {int debug_info_table; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_14__ {int * data; TYPE_1__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_15__ {unsigned int attribute; struct TYPE_15__* next; } ;
typedef TYPE_5__ dwarf2_abbrev_entry_attr_t ;
struct TYPE_11__ {TYPE_5__* attrs; } ;
typedef int BOOL ;


 scalar_t__ DW_AT_abstract_origin ;
 unsigned int DW_AT_sibling ;
 scalar_t__ DW_AT_specification ;
 int FALSE ;
 int FIXME (char*,...) ;
 int TRUE ;
 int attr_abstract_origin ;
 int attr_direct ;
 int attr_specification ;
 int dwarf2_fill_attr (TYPE_3__ const*,TYPE_5__*,int ,struct attribute*) ;
 TYPE_4__* sparse_array_find (int *,int ) ;

__attribute__((used)) static BOOL dwarf2_find_attribute(const dwarf2_parse_context_t* ctx,
                                  const dwarf2_debug_info_t* di,
                                  unsigned at, struct attribute* attr)
{
    unsigned i, refidx = 0;
    dwarf2_abbrev_entry_attr_t* abbrev_attr;
    dwarf2_abbrev_entry_attr_t* ref_abbrev_attr = ((void*)0);

    attr->gotten_from = attr_direct;
    while (di)
    {
        ref_abbrev_attr = ((void*)0);
        for (i = 0, abbrev_attr = di->abbrev->attrs; abbrev_attr; i++, abbrev_attr = abbrev_attr->next)
        {
            if (abbrev_attr->attribute == at)
            {
                dwarf2_fill_attr(ctx, abbrev_attr, di->data[i], attr);
                return TRUE;
            }
            if ((abbrev_attr->attribute == DW_AT_abstract_origin ||
                 abbrev_attr->attribute == DW_AT_specification) &&
                at != DW_AT_sibling)
            {
                if (ref_abbrev_attr)
                    FIXME("two references %lx and %lx\n", ref_abbrev_attr->attribute, abbrev_attr->attribute);
                ref_abbrev_attr = abbrev_attr;
                refidx = i;
                attr->gotten_from = (abbrev_attr->attribute == DW_AT_abstract_origin) ?
                    attr_abstract_origin : attr_specification;
            }
        }

        if (!ref_abbrev_attr) break;
        dwarf2_fill_attr(ctx, ref_abbrev_attr, di->data[refidx], attr);
        if (!(di = sparse_array_find(&ctx->debug_info_table, attr->u.uvalue)))
            FIXME("Should have found the debug info entry\n");
    }
    return FALSE;
}
