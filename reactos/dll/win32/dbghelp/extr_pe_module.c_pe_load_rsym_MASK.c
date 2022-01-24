#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  BaseOfImage; } ;
struct module {TYPE_1__ module; TYPE_4__** format_info; } ;
struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
struct TYPE_7__ {TYPE_2__* pe_info; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct TYPE_6__ {struct image_file_map fmap; } ;
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
 scalar_t__ FUNC5 (struct module*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(struct module* module)
{
    struct image_file_map*      fmap = &module->format_info[DFI_PE]->u.pe_info->fmap;
    struct image_section_map    sect_rsym;
    BOOL                        ret = FALSE;

    if (FUNC4(fmap, ".rossym", &sect_rsym))
    {
        const char* rsym = FUNC2(&sect_rsym);
        if (rsym != IMAGE_NO_MAP)
        {
            ret = FUNC5(module, module->module.BaseOfImage,
                             rsym, FUNC1(&sect_rsym));
        }
        FUNC3(&sect_rsym);
    }
    FUNC0("%s the RSYM debug info\n", ret ? "successfully loaded" : "failed to load");

    return ret;
}