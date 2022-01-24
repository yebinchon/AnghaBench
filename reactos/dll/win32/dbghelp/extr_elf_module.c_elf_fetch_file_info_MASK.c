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
struct TYPE_5__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  elf_size; int /*<<< orphan*/  elf_start; } ;
struct TYPE_6__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  const* filename; } ;
struct TYPE_8__ {TYPE_3__ file; } ;
struct elf_map_file_data {TYPE_4__ u; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct elf_map_file_data*,struct image_file_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct image_file_map*) ; 
 int /*<<< orphan*/  from_file ; 

BOOL FUNC3(const WCHAR* name, DWORD_PTR* base,
                         DWORD* size, DWORD* checksum)
{
    struct image_file_map fmap;

    struct elf_map_file_data    emfd;

    emfd.kind = from_file;
    emfd.u.file.filename = name;
    if (!FUNC1(&emfd, &fmap)) return FALSE;
    if (base) *base = fmap.u.elf.elf_start;
    *size = fmap.u.elf.elf_size;
    *checksum = FUNC0(fmap.u.elf.fd);
    FUNC2(&fmap);
    return TRUE;
}