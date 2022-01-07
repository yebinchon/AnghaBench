
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PDB_DS_TOC {size_t num_files; int* file_size; } ;
struct PDB_DS_HEADER {int block_size; } ;
typedef size_t DWORD ;


 void* pdb_ds_read (struct PDB_DS_HEADER const*,size_t const*,int) ;

__attribute__((used)) static void* pdb_read_ds_file(const struct PDB_DS_HEADER* pdb,
                              const struct PDB_DS_TOC* toc, DWORD file_nr)
{
    const DWORD* block_list;
    DWORD i;

    if (!toc || file_nr >= toc->num_files) return ((void*)0);
    if (toc->file_size[file_nr] == 0 || toc->file_size[file_nr] == 0xFFFFFFFF) return ((void*)0);

    block_list = &toc->file_size[toc->num_files];
    for (i = 0; i < file_nr; i++)
        block_list += (toc->file_size[i] + pdb->block_size - 1) / pdb->block_size;

    return pdb_ds_read(pdb, block_list, toc->file_size[file_nr]);
}
