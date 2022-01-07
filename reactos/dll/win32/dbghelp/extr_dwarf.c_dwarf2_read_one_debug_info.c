
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {unsigned long uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_23__ {unsigned long data; scalar_t__ end_data; } ;
typedef TYPE_3__ dwarf2_traverse_context_t ;
struct TYPE_24__ {size_t section; TYPE_1__* sections; int pool; int debug_info_table; int abbrev_table; } ;
typedef TYPE_4__ dwarf2_parse_context_t ;
struct TYPE_25__ {unsigned long* data; int children; struct TYPE_25__* parent; int * symt; TYPE_6__ const* abbrev; } ;
typedef TYPE_5__ dwarf2_debug_info_t ;
struct TYPE_26__ {int num_attr; scalar_t__ have_child; TYPE_7__* attrs; } ;
typedef TYPE_6__ dwarf2_abbrev_entry_t ;
struct TYPE_27__ {struct TYPE_27__* next; } ;
typedef TYPE_7__ dwarf2_abbrev_entry_attr_t ;
struct TYPE_21__ {unsigned long address; } ;
typedef int BOOL ;


 int DW_AT_sibling ;
 int FALSE ;
 int TRACE (char*,unsigned long,unsigned long) ;
 int TRUE ;
 int WARN (char*,unsigned long,unsigned long) ;
 TYPE_6__* dwarf2_abbrev_table_find_entry (int *,unsigned long) ;
 unsigned long dwarf2_debug_traverse_ctx (TYPE_3__*) ;
 scalar_t__ dwarf2_find_attribute (TYPE_4__*,TYPE_5__*,int ,struct attribute*) ;
 unsigned long dwarf2_leb128_as_unsigned (TYPE_3__*) ;
 int dwarf2_swallow_attribute (TYPE_3__*,TYPE_7__*) ;
 unsigned long* pool_alloc (int *,int) ;
 TYPE_5__* sparse_array_add (int *,unsigned long,int *) ;
 TYPE_5__** vector_add (int *,int *) ;
 int vector_init (int *,int,int) ;

__attribute__((used)) static BOOL dwarf2_read_one_debug_info(dwarf2_parse_context_t* ctx,
                                       dwarf2_traverse_context_t* traverse,
                                       dwarf2_debug_info_t* parent_di,
                                       dwarf2_debug_info_t** pdi)
{
    const dwarf2_abbrev_entry_t*abbrev;
    unsigned long entry_code;
    unsigned long offset;
    dwarf2_debug_info_t* di;
    dwarf2_debug_info_t* child;
    dwarf2_debug_info_t** where;
    dwarf2_abbrev_entry_attr_t* attr;
    unsigned i;
    struct attribute sibling;

    offset = traverse->data - ctx->sections[ctx->section].address;
    entry_code = dwarf2_leb128_as_unsigned(traverse);
    TRACE("found entry_code %lu at 0x%lx\n", entry_code, offset);
    if (!entry_code)
    {
        *pdi = ((void*)0);
        return TRUE;
    }
    abbrev = dwarf2_abbrev_table_find_entry(&ctx->abbrev_table, entry_code);
    if (!abbrev)
    {
 WARN("Cannot find abbrev entry for %lu at 0x%lx\n", entry_code, offset);
 return FALSE;
    }
    di = sparse_array_add(&ctx->debug_info_table, offset, &ctx->pool);
    if (!di) return FALSE;
    di->abbrev = abbrev;
    di->symt = ((void*)0);
    di->parent = parent_di;

    if (abbrev->num_attr)
    {
        di->data = pool_alloc(&ctx->pool, abbrev->num_attr * sizeof(const char*));
        for (i = 0, attr = abbrev->attrs; attr; i++, attr = attr->next)
        {
            di->data[i] = traverse->data;
            dwarf2_swallow_attribute(traverse, attr);
        }
    }
    else di->data = ((void*)0);
    if (abbrev->have_child)
    {
        vector_init(&di->children, sizeof(dwarf2_debug_info_t*), 16);
        while (traverse->data < traverse->end_data)
        {
            if (!dwarf2_read_one_debug_info(ctx, traverse, di, &child)) return FALSE;
            if (!child) break;
            where = vector_add(&di->children, &ctx->pool);
            if (!where) return FALSE;
            *where = child;
        }
    }
    if (dwarf2_find_attribute(ctx, di, DW_AT_sibling, &sibling) &&
        traverse->data != ctx->sections[ctx->section].address + sibling.u.uvalue)
    {
        WARN("setting cursor for %s to next sibling <0x%lx>\n",
             dwarf2_debug_traverse_ctx(traverse), sibling.u.uvalue);
        traverse->data = ctx->sections[ctx->section].address + sibling.u.uvalue;
    }
    *pdi = di;
    return TRUE;
}
