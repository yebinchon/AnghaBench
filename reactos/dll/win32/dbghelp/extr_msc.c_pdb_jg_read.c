
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PDB_JG_HEADER {int block_size; } ;
typedef int WORD ;
typedef void BYTE ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int memcpy (void*,char const*,int const) ;

__attribute__((used)) static void* pdb_jg_read(const struct PDB_JG_HEADER* pdb, const WORD* block_list,
                         int size)
{
    int i, num_blocks;
    BYTE* buffer;

    if (!size) return ((void*)0);

    num_blocks = (size + pdb->block_size - 1) / pdb->block_size;
    buffer = HeapAlloc(GetProcessHeap(), 0, num_blocks * pdb->block_size);

    for (i = 0; i < num_blocks; i++)
        memcpy(buffer + i * pdb->block_size,
               (const char*)pdb + block_list[i] * pdb->block_size, pdb->block_size);

    return buffer;
}
