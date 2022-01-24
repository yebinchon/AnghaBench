#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_9__ ;
typedef  struct TYPE_40__   TYPE_8__ ;
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_12__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct TYPE_38__ {unsigned long BaseOfImage; void* LineNumbers; } ;
struct module {TYPE_6__ module; TYPE_3__** format_info; } ;
struct elf_thunk_area {int dummy; } ;
struct TYPE_37__ {unsigned long uvalue; int /*<<< orphan*/ * string; } ;
struct attribute {TYPE_5__ u; } ;
struct TYPE_39__ {unsigned char* data; unsigned char* end_data; unsigned long word_size; } ;
typedef  TYPE_7__ dwarf2_traverse_context_t ;
struct TYPE_40__ {unsigned char const* address; int size; scalar_t__ rva; } ;
typedef  TYPE_8__ dwarf2_section_t ;
struct TYPE_41__ {size_t section; unsigned long load_offset; int ref_offset; int /*<<< orphan*/  pool; TYPE_11__* compiland; int /*<<< orphan*/  debug_info_table; int /*<<< orphan*/  abbrev_table; int /*<<< orphan*/ * cpp_name; int /*<<< orphan*/ ** symt_cache; struct elf_thunk_area const* thunks; struct module* module; TYPE_8__ const* sections; } ;
typedef  TYPE_9__ dwarf2_parse_context_t ;
struct TYPE_30__ {int /*<<< orphan*/ * symt; TYPE_4__* abbrev; } ;
typedef  TYPE_10__ dwarf2_debug_info_t ;
struct TYPE_36__ {scalar_t__ tag; } ;
struct TYPE_34__ {TYPE_1__* dwarf2_info; } ;
struct TYPE_35__ {TYPE_2__ u; } ;
struct TYPE_33__ {unsigned long word_size; } ;
struct TYPE_32__ {int /*<<< orphan*/  symt; } ;
struct TYPE_31__ {int /*<<< orphan*/  symt; } ;
typedef  void* BOOL ;

/* Variables and functions */
 size_t DFI_DWARF ; 
 int /*<<< orphan*/  DW_AT_comp_dir ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  DW_AT_stmt_list ; 
 scalar_t__ DW_TAG_compile_unit ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short) ; 
 int /*<<< orphan*/  btVoid ; 
 scalar_t__ FUNC3 (TYPE_9__*,TYPE_10__*,int /*<<< orphan*/ ,struct attribute*) ; 
 struct vector* FUNC4 (TYPE_9__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (TYPE_7__*) ; 
 scalar_t__ FUNC8 (TYPE_8__ const*,TYPE_9__*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned short FUNC9 (TYPE_7__*) ; 
 unsigned long FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,TYPE_7__*,int /*<<< orphan*/ *,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 size_t sc_void ; 
 size_t section_abbrev ; 
 size_t section_debug ; 
 size_t section_line ; 
 int /*<<< orphan*/  FUNC15 (struct module*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_12__* FUNC17 (struct module*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC18 (struct module*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct vector*,unsigned int) ; 
 unsigned int FUNC20 (struct vector*) ; 

__attribute__((used)) static BOOL FUNC21(const dwarf2_section_t* sections,
                                          struct module* module,
                                          const struct elf_thunk_area* thunks,
                                          dwarf2_traverse_context_t* mod_ctx,
                                          unsigned long load_offset)
{
    dwarf2_parse_context_t ctx;
    dwarf2_traverse_context_t abbrev_ctx;
    dwarf2_debug_info_t* di;
    dwarf2_traverse_context_t cu_ctx;
    const unsigned char* comp_unit_start = mod_ctx->data;
    unsigned long cu_length;
    unsigned short cu_version;
    unsigned long cu_abbrev_offset;
    BOOL ret = FALSE;

    cu_length = FUNC10(mod_ctx);
    cu_ctx.data = mod_ctx->data;
    cu_ctx.end_data = mod_ctx->data + cu_length;
    mod_ctx->data += cu_length;
    cu_version = FUNC9(&cu_ctx);
    cu_abbrev_offset = FUNC10(&cu_ctx);
    cu_ctx.word_size = FUNC7(&cu_ctx);

    FUNC1("Compilation Unit Header found at 0x%x:\n",
          (int)(comp_unit_start - sections[section_debug].address));
    FUNC1("- length:        %lu\n", cu_length);
    FUNC1("- version:       %u\n",  cu_version);
    FUNC1("- abbrev_offset: %lu\n", cu_abbrev_offset);
    FUNC1("- word_size:     %u\n",  cu_ctx.word_size);

    if (cu_version != 2)
    {
        FUNC2("%u DWARF version unsupported. Wine dbghelp only support DWARF 2.\n",
             cu_version);
        return FALSE;
    }

    module->format_info[DFI_DWARF]->u.dwarf2_info->word_size = cu_ctx.word_size;
    mod_ctx->word_size = cu_ctx.word_size;

    FUNC14(&ctx.pool, 65536);
    ctx.sections = sections;
    ctx.section = section_debug;
    ctx.module = module;
    ctx.thunks = thunks;
    ctx.load_offset = load_offset;
    ctx.ref_offset = comp_unit_start - sections[section_debug].address;
    FUNC12(ctx.symt_cache, 0, sizeof(ctx.symt_cache));
    ctx.symt_cache[sc_void] = &FUNC17(module, btVoid, "void", 0)->symt;
    ctx.cpp_name = NULL;

    abbrev_ctx.data = sections[section_abbrev].address + cu_abbrev_offset;
    abbrev_ctx.end_data = sections[section_abbrev].address + sections[section_abbrev].size;
    abbrev_ctx.word_size = cu_ctx.word_size;
    FUNC6(&abbrev_ctx, &ctx.abbrev_table, &ctx.pool);

    FUNC16(&ctx.debug_info_table, sizeof(dwarf2_debug_info_t), 128);
    FUNC11(&ctx, &cu_ctx, NULL, &di);

    if (di->abbrev->tag == DW_TAG_compile_unit)
    {
        struct attribute            name;
        struct vector*              children;
        dwarf2_debug_info_t*        child = NULL;
        unsigned int                i;
        struct attribute            stmt_list, low_pc;
        struct attribute            comp_dir;

        if (!FUNC3(&ctx, di, DW_AT_name, &name))
            name.u.string = NULL;

        /* get working directory of current compilation unit */
        if (!FUNC3(&ctx, di, DW_AT_comp_dir, &comp_dir))
            comp_dir.u.string = NULL;

        if (!FUNC3(&ctx, di, DW_AT_low_pc, &low_pc))
            low_pc.u.uvalue = 0;
        ctx.compiland = FUNC18(module, ctx.load_offset + low_pc.u.uvalue,
                                           FUNC15(module, comp_dir.u.string, name.u.string));
        di->symt = &ctx.compiland->symt;
        children = FUNC4(&ctx, di);
        if (children) for (i = 0; i < FUNC20(children); i++)
        {
            child = *(dwarf2_debug_info_t**)FUNC19(children, i);
            FUNC5(&ctx, child);
        }
        if (FUNC3(&ctx, di, DW_AT_stmt_list, &stmt_list))
        {
#if defined(__REACTOS__) && defined(__clang__)
            unsigned long stmt_list_val = stmt_list.u.uvalue;
            if (stmt_list_val > module->module.BaseOfImage)
            {
                /* FIXME: Clang is recording this as an address, not an offset */
                stmt_list_val -= module->module.BaseOfImage + sections[section_line].rva;
            }
            if (dwarf2_parse_line_numbers(sections, &ctx, comp_dir.u.string, stmt_list_val))
#else
            if (FUNC8(sections, &ctx, comp_dir.u.string, stmt_list.u.uvalue))
#endif
                module->module.LineNumbers = TRUE;
        }
        ret = TRUE;
    }
    else FUNC0("Should have a compilation unit here\n");
    FUNC13(&ctx.pool);
    return ret;
}