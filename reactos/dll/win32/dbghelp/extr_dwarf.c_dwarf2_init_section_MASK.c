#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
struct TYPE_4__ {scalar_t__ rva; scalar_t__ size; int /*<<< orphan*/  const* address; int /*<<< orphan*/  compressed; } ;
typedef  TYPE_1__ dwarf2_section_t ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,struct image_section_map*) ; 
 scalar_t__ FUNC2 (struct image_file_map*,char const*,struct image_section_map*) ; 
 scalar_t__ FUNC3 (struct image_section_map*) ; 
 scalar_t__ FUNC4 (struct image_section_map*) ; 
 scalar_t__ FUNC5 (struct image_section_map*) ; 

__attribute__((used)) static inline BOOL FUNC6(dwarf2_section_t* section, struct image_file_map* fmap,
                                       const char* sectname, const char* zsectname,
                                       struct image_section_map* ism)
{
    struct image_section_map    local_ism;

    if (!ism) ism = &local_ism;

    section->compressed = FALSE;
    if (FUNC2(fmap, sectname, ism))
    {
        section->address = (const BYTE*)FUNC5(ism);
        section->size    = FUNC4(ism);
        section->rva     = FUNC3(ism);
        return TRUE;
    }

    section->address = NULL;
    section->size    = 0;
    section->rva     = 0;

    if (zsectname && FUNC2(fmap, zsectname, ism))
    {
#ifdef HAVE_ZLIB
        return dwarf2_init_zsection(section, zsectname, ism);
#else
        FUNC0("dbghelp not built with zlib, but compressed section found\n" );
#endif
    }

    return FALSE;
}