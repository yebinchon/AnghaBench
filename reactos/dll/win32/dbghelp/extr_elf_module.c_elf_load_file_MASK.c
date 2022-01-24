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
struct process {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  elf_start; } ;
struct TYPE_6__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  const* filename; } ;
struct TYPE_7__ {TYPE_4__ file; } ;
struct elf_map_file_data {TYPE_3__ u; int /*<<< orphan*/  kind; } ;
struct elf_info {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct process*,int /*<<< orphan*/  const*,struct image_file_map*,unsigned long,unsigned long,struct elf_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct elf_map_file_data*,struct image_file_map*) ; 
 int /*<<< orphan*/  FUNC5 (struct image_file_map*) ; 
 int /*<<< orphan*/  from_file ; 

__attribute__((used)) static BOOL FUNC6(struct process* pcs, const WCHAR* filename,
                          unsigned long load_offset, unsigned long dyn_addr,
                          struct elf_info* elf_info)
{
    BOOL                        ret = FALSE;
    struct image_file_map       fmap;
    struct elf_map_file_data    emfd;

    FUNC1("Processing elf file '%s' at %08lx\n", FUNC2(filename), load_offset);

    emfd.kind = from_file;
    emfd.u.file.filename = filename;
    if (!FUNC4(&emfd, &fmap)) return ret;

    /* Next, we need to find a few of the internal ELF headers within
     * this thing.  We need the main executable header, and the section
     * table.
     */
    if (!fmap.u.elf.elf_start && !load_offset)
        FUNC0("Relocatable ELF %s, but no load address. Loading at 0x0000000\n",
            FUNC2(filename));

    ret = FUNC3(pcs, filename, &fmap, load_offset, dyn_addr, elf_info);

    FUNC5(&fmap);

    return ret;
}