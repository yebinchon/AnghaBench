#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct process {int dummy; } ;
struct TYPE_12__ {scalar_t__ BaseOfImage; } ;
struct module {TYPE_4__ module; TYPE_3__** format_info; } ;
struct image_section_map {int dummy; } ;
struct TYPE_13__ {scalar_t__ ImageBase; } ;
struct TYPE_14__ {TYPE_5__ OptionalHeader; } ;
struct TYPE_15__ {TYPE_6__ ntheader; } ;
struct TYPE_16__ {TYPE_7__ pe; } ;
struct image_file_map {TYPE_8__ u; } ;
struct TYPE_10__ {TYPE_1__* pe_info; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct TYPE_9__ {struct image_file_map fmap; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t DFI_PE ; 
 scalar_t__ FALSE ; 
 char const* IMAGE_NO_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct image_section_map*) ; 
 char* FUNC2 (struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct image_section_map*) ; 
 scalar_t__ FUNC4 (struct image_file_map*,char*,struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 
 scalar_t__ FUNC6 (struct module*,scalar_t__,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC7(const struct process* pcs, struct module* module)
{
    struct image_file_map*      fmap = &module->format_info[DFI_PE]->u.pe_info->fmap;
    struct image_section_map    sect_stabs, sect_stabstr;
    BOOL                        ret = FALSE;

    if (FUNC4(fmap, ".stab", &sect_stabs) && FUNC4(fmap, ".stabstr", &sect_stabstr))
    {
        const char* stab;
        const char* stabstr;

        stab = FUNC2(&sect_stabs);
        stabstr = FUNC2(&sect_stabstr);
        if (stab != IMAGE_NO_MAP && stabstr != IMAGE_NO_MAP)
        {
            ret = FUNC6(module,
                              module->module.BaseOfImage - fmap->u.pe.ntheader.OptionalHeader.ImageBase,
                              stab, FUNC1(&sect_stabs),
                              stabstr, FUNC1(&sect_stabstr),
                              NULL, NULL);
        }
        FUNC3(&sect_stabs);
        FUNC3(&sect_stabstr);
        if (ret) FUNC5(module);
    }
    FUNC0("%s the STABS debug info\n", ret ? "successfully loaded" : "failed to load");

    return ret;
}