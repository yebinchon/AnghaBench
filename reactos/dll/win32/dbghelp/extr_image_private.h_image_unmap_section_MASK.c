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
 int /*<<< orphan*/  FUNC1 (struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct image_section_map*) ; 

__attribute__((used)) static inline void FUNC4(struct image_section_map* ism)
{
    if (!ism->fmap) return;
    switch (ism->fmap->modtype)
    {
#ifndef DBGHELP_STATIC_LIB
    case DMT_ELF:   FUNC1(ism); break;
    case DMT_MACHO: FUNC2(ism); break;
#endif
    case DMT_PE:    FUNC3(ism);   break;
    default: FUNC0(0); return;
    }
}