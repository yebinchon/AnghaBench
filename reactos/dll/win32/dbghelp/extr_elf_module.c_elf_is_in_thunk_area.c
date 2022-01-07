
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_thunk_area {unsigned long rva_start; unsigned long rva_end; scalar_t__ symname; } ;



int elf_is_in_thunk_area(unsigned long addr,
                         const struct elf_thunk_area* thunks)
{
    unsigned i;

    if (thunks) for (i = 0; thunks[i].symname; i++)
    {
        if (addr >= thunks[i].rva_start && addr < thunks[i].rva_end)
            return i;
    }
    return -1;
}
