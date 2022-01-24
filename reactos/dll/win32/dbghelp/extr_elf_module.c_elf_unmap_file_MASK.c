#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct image_section_map {scalar_t__ sidx; struct image_file_map* fmap; } ;
struct TYPE_4__ {scalar_t__ e_shnum; } ;
struct TYPE_6__ {int fd; struct image_file_map* alternate; int /*<<< orphan*/  target_copy; int /*<<< orphan*/  sect; TYPE_1__ elfhdr; } ;
struct TYPE_5__ {TYPE_3__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct image_section_map*) ; 

__attribute__((used)) static void FUNC4(struct image_file_map* fmap)
{
    while (fmap)
    {
        if (fmap->u.elf.fd != -1)
        {
            struct image_section_map  ism;
            ism.fmap = fmap;
            for (ism.sidx = 0; ism.sidx < fmap->u.elf.elfhdr.e_shnum; ism.sidx++)
            {
                FUNC3(&ism);
            }
            FUNC1(FUNC0(), 0, fmap->u.elf.sect);
            FUNC2(fmap->u.elf.fd);
        }
        FUNC1(FUNC0(), 0, fmap->u.elf.target_copy);
        fmap = fmap->u.elf.alternate;
    }
}