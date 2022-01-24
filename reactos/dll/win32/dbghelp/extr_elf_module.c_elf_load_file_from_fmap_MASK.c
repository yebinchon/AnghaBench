#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct process {int /*<<< orphan*/  handle; } ;
struct TYPE_18__ {struct elf_module_info* elf_info; } ;
struct module_format {TYPE_11__ u; int /*<<< orphan*/ * loc_compute; int /*<<< orphan*/  remove; TYPE_14__* module; } ;
struct image_section_map {size_t sidx; TYPE_8__* fmap; } ;
struct TYPE_30__ {unsigned long elf_start; int /*<<< orphan*/  fd; int /*<<< orphan*/  elf_size; TYPE_2__* sect; } ;
struct TYPE_17__ {TYPE_9__ elf; } ;
struct image_file_map {TYPE_10__ u; } ;
struct elf_module_info {unsigned long elf_addr; int elf_mark; scalar_t__ elf_loader; struct image_file_map file_map; } ;
struct elf_info {int flags; int /*<<< orphan*/ * module_name; TYPE_14__* module; int /*<<< orphan*/  dbg_hdr_addr; } ;
typedef  int /*<<< orphan*/  dyn ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_27__ {TYPE_5__* sect; } ;
struct TYPE_28__ {TYPE_6__ elf; } ;
struct TYPE_29__ {TYPE_7__ u; } ;
struct TYPE_25__ {unsigned long sh_addr; } ;
struct TYPE_26__ {TYPE_4__ shdr; } ;
struct TYPE_24__ {int /*<<< orphan*/  d_ptr; } ;
struct TYPE_22__ {scalar_t__ sh_addr; } ;
struct TYPE_23__ {TYPE_1__ shdr; } ;
struct TYPE_19__ {unsigned long BaseOfImage; int /*<<< orphan*/  SymType; } ;
struct TYPE_21__ {unsigned long reloc_delta; TYPE_12__ module; struct module_format** format_info; } ;
struct TYPE_20__ {scalar_t__ d_tag; TYPE_3__ d_un; } ;
typedef  TYPE_13__ Elf_Dyn ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t DFI_ELF ; 
 int /*<<< orphan*/  DMT_ELF ; 
 scalar_t__ DT_DEBUG ; 
 scalar_t__ DT_NULL ; 
 int ELF_INFO_DEBUG_HEADER ; 
 int ELF_INFO_MODULE ; 
 int ELF_INFO_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_format*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_13__*,int,unsigned long*) ; 
 int /*<<< orphan*/  SHT_DYNAMIC ; 
 int SYMOPT_DEFERRED_LOADS ; 
 int /*<<< orphan*/  SymDeferred ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int dbghelp_options ; 
 unsigned long FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct image_file_map*) ; 
 scalar_t__ FUNC9 (struct image_file_map*,char*,int /*<<< orphan*/ ,struct image_section_map*) ; 
 unsigned long FUNC10 (struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_14__*) ; 
 int /*<<< orphan*/  elf_module_remove ; 
 int /*<<< orphan*/  FUNC12 (struct image_file_map*) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 TYPE_14__* FUNC14 (struct process*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static BOOL FUNC16(struct process* pcs, const WCHAR* filename,
                                    struct image_file_map* fmap, unsigned long load_offset,
                                    unsigned long dyn_addr, struct elf_info* elf_info)
{
    BOOL        ret = FALSE;

    if (elf_info->flags & ELF_INFO_DEBUG_HEADER)
    {
        struct image_section_map        ism;

        if (FUNC9(fmap, ".dynamic", SHT_DYNAMIC, &ism))
        {
            Elf_Dyn         dyn;
            char*           ptr = (char*)fmap->u.elf.sect[ism.sidx].shdr.sh_addr;
            unsigned long   len;

            if (load_offset) ptr += load_offset - fmap->u.elf.elf_start;

            do
            {
                if (!FUNC3(pcs->handle, ptr, &dyn, sizeof(dyn), &len) ||
                    len != sizeof(dyn))
                    return ret;
                if (dyn.d_tag == DT_DEBUG)
                {
                    elf_info->dbg_hdr_addr = dyn.d_un.d_ptr;
                    if (load_offset == 0 && dyn_addr == 0) /* likely the case */
                        /* Assume this module (the Wine loader) has been loaded at its preferred address */
                        dyn_addr = ism.fmap->u.elf.sect[ism.sidx].shdr.sh_addr;
                    break;
                }
                ptr += sizeof(dyn);
            } while (dyn.d_tag != DT_NULL);
            if (dyn.d_tag == DT_NULL) return ret;
	}
        FUNC8(fmap);
    }

    if (elf_info->flags & ELF_INFO_MODULE)
    {
        struct elf_module_info *elf_module_info;
        struct module_format*   modfmt;
        struct image_section_map ism;
        unsigned long           modbase = load_offset;

        if (FUNC9(fmap, ".dynamic", SHT_DYNAMIC, &ism))
        {
            unsigned long rva_dyn = FUNC10(&ism);

            FUNC4("For module %s, got ELF (start=%lx dyn=%lx), link_map (start=%lx dyn=%lx)\n",
                  FUNC7(filename), (unsigned long)fmap->u.elf.elf_start, rva_dyn,
                  load_offset, dyn_addr);
            if (dyn_addr && load_offset + rva_dyn != dyn_addr)
            {
                FUNC5("\thave to relocate: %lx\n", dyn_addr - rva_dyn);
                modbase = dyn_addr - rva_dyn;
            }
	} else FUNC5("For module %s, no .dynamic section\n", FUNC7(filename));
        FUNC8(fmap);

        modfmt = FUNC1(FUNC0(), 0,
                          sizeof(struct module_format) + sizeof(struct elf_module_info));
        if (!modfmt) return FALSE;
        elf_info->module = FUNC14(pcs, filename, DMT_ELF, FALSE, modbase,
                                      fmap->u.elf.elf_size, 0, FUNC6(fmap->u.elf.fd));
        if (!elf_info->module)
        {
            FUNC2(FUNC0(), 0, modfmt);
            return FALSE;
        }
        elf_info->module->reloc_delta = elf_info->module->module.BaseOfImage - fmap->u.elf.elf_start;
        elf_module_info = (void*)(modfmt + 1);
        elf_info->module->format_info[DFI_ELF] = modfmt;
        modfmt->module      = elf_info->module;
        modfmt->remove      = elf_module_remove;
        modfmt->loc_compute = NULL;
        modfmt->u.elf_info  = elf_module_info;

        elf_module_info->elf_addr = load_offset;

        elf_module_info->file_map = *fmap;
        FUNC12(fmap);
        if (dbghelp_options & SYMOPT_DEFERRED_LOADS)
        {
            elf_info->module->module.SymType = SymDeferred;
            ret = TRUE;
        }
        else ret = FUNC11(elf_info->module);

        elf_module_info->elf_mark = 1;
        elf_module_info->elf_loader = 0;
    } else ret = TRUE;

    if (elf_info->flags & ELF_INFO_NAME)
    {
        WCHAR*  ptr;
        ptr = FUNC1(FUNC0(), 0, (FUNC13(filename) + 1) * sizeof(WCHAR));
        if (ptr)
        {
            FUNC15(ptr, filename);
            elf_info->module_name = ptr;
        }
        else ret = FALSE;
    }

    return ret;
}