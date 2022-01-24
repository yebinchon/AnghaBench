#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct image_section_map {TYPE_1__* fmap; } ;
struct TYPE_2__ {int modtype; } ;

/* Variables and functions */
#define  DMT_ELF 130 
#define  DMT_MACHO 129 
#define  DMT_PE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (struct image_section_map*) ; 
 char const* FUNC2 (struct image_section_map*) ; 
 char const* FUNC3 (struct image_section_map*) ; 

__attribute__((used)) static inline const char* FUNC4(struct image_section_map* ism)
{
    if (!ism->fmap) return NULL;
    switch (ism->fmap->modtype)
    {
#ifndef DBGHELP_STATIC_LIB
    case DMT_ELF:   return FUNC1(ism);
    case DMT_MACHO: return FUNC2(ism);
#endif
    case DMT_PE:    return FUNC3(ism);
    default: FUNC0(0); return NULL;
    }
}