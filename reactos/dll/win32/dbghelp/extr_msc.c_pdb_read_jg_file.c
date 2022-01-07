
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PDB_JG_TOC {size_t num_files; TYPE_1__* file; } ;
struct PDB_JG_HEADER {int block_size; } ;
typedef int WORD ;
struct TYPE_2__ {int size; } ;
typedef size_t DWORD ;


 void* pdb_jg_read (struct PDB_JG_HEADER const*,int const*,int) ;

__attribute__((used)) static void* pdb_read_jg_file(const struct PDB_JG_HEADER* pdb,
                              const struct PDB_JG_TOC* toc, DWORD file_nr)
{
    const WORD* block_list;
    DWORD i;

    if (!toc || file_nr >= toc->num_files) return ((void*)0);

    block_list = (const WORD*) &toc->file[toc->num_files];
    for (i = 0; i < file_nr; i++)
        block_list += (toc->file[i].size + pdb->block_size - 1) / pdb->block_size;

    return pdb_jg_read(pdb, block_list, toc->file[file_nr].size);
}
