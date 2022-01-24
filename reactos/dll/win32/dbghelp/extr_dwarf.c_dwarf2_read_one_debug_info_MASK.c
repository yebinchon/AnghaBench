#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {unsigned long uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_23__ {unsigned long data; scalar_t__ end_data; } ;
typedef  TYPE_3__ dwarf2_traverse_context_t ;
struct TYPE_24__ {size_t section; TYPE_1__* sections; int /*<<< orphan*/  pool; int /*<<< orphan*/  debug_info_table; int /*<<< orphan*/  abbrev_table; } ;
typedef  TYPE_4__ dwarf2_parse_context_t ;
struct TYPE_25__ {unsigned long* data; int /*<<< orphan*/  children; struct TYPE_25__* parent; int /*<<< orphan*/ * symt; TYPE_6__ const* abbrev; } ;
typedef  TYPE_5__ dwarf2_debug_info_t ;
struct TYPE_26__ {int num_attr; scalar_t__ have_child; TYPE_7__* attrs; } ;
typedef  TYPE_6__ dwarf2_abbrev_entry_t ;
struct TYPE_27__ {struct TYPE_27__* next; } ;
typedef  TYPE_7__ dwarf2_abbrev_entry_attr_t ;
struct TYPE_21__ {unsigned long address; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_sibling ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,struct attribute*) ; 
 unsigned long FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_7__*) ; 
 unsigned long* FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 TYPE_5__** FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static BOOL FUNC11(dwarf2_parse_context_t* ctx,
                                       dwarf2_traverse_context_t* traverse,
                                       dwarf2_debug_info_t* parent_di,
                                       dwarf2_debug_info_t** pdi)
{
    const dwarf2_abbrev_entry_t*abbrev;
    unsigned long               entry_code;
    unsigned long               offset;
    dwarf2_debug_info_t*        di;
    dwarf2_debug_info_t*        child;
    dwarf2_debug_info_t**       where;
    dwarf2_abbrev_entry_attr_t* attr;
    unsigned                    i;
    struct attribute            sibling;

    offset = traverse->data - ctx->sections[ctx->section].address;
    entry_code = FUNC5(traverse);
    FUNC0("found entry_code %lu at 0x%lx\n", entry_code, offset);
    if (!entry_code)
    {
        *pdi = NULL;
        return TRUE;
    }
    abbrev = FUNC2(&ctx->abbrev_table, entry_code);
    if (!abbrev)
    {
	FUNC1("Cannot find abbrev entry for %lu at 0x%lx\n", entry_code, offset);
	return FALSE;
    }
    di = FUNC8(&ctx->debug_info_table, offset, &ctx->pool);
    if (!di) return FALSE;
    di->abbrev = abbrev;
    di->symt   = NULL;
    di->parent = parent_di;

    if (abbrev->num_attr)
    {
        di->data = FUNC7(&ctx->pool, abbrev->num_attr * sizeof(const char*));
        for (i = 0, attr = abbrev->attrs; attr; i++, attr = attr->next)
        {
            di->data[i] = traverse->data;
            FUNC6(traverse, attr);
        }
    }
    else di->data = NULL;
    if (abbrev->have_child)
    {
        FUNC10(&di->children, sizeof(dwarf2_debug_info_t*), 16);
        while (traverse->data < traverse->end_data)
        {
            if (!FUNC11(ctx, traverse, di, &child)) return FALSE;
            if (!child) break;
            where = FUNC9(&di->children, &ctx->pool);
            if (!where) return FALSE;
            *where = child;
        }
    }
    if (FUNC4(ctx, di, DW_AT_sibling, &sibling) &&
        traverse->data != ctx->sections[ctx->section].address + sibling.u.uvalue)
    {
        FUNC1("setting cursor for %s to next sibling <0x%lx>\n",
             FUNC3(traverse), sibling.u.uvalue);
        traverse->data = ctx->sections[ctx->section].address + sibling.u.uvalue;
    }
    *pdi = di;
    return TRUE;
}