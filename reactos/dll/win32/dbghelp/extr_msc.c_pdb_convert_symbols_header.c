
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int gsym_file; int hash2_file; int hash1_file; scalar_t__ pdbimport_size; int srcmodule_size; int hash_size; int offset_size; int module_size; scalar_t__ version; } ;
struct TYPE_5__ {int gsym_file; int hash2_file; int hash1_file; int srcmodule_size; int hash_size; int offset_size; int module_size; } ;
typedef TYPE_1__ PDB_SYMBOLS_OLD ;
typedef TYPE_2__ PDB_SYMBOLS ;
typedef int DWORD ;
typedef int BYTE ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void pdb_convert_symbols_header(PDB_SYMBOLS* symbols,
                                       int* header_size, const BYTE* image)
{
    memset(symbols, 0, sizeof(PDB_SYMBOLS));
    if (!image) return;

    if (*(const DWORD*)image != 0xffffffff)
    {

        const PDB_SYMBOLS_OLD* old = (const PDB_SYMBOLS_OLD*)image;
        symbols->version = 0;
        symbols->module_size = old->module_size;
        symbols->offset_size = old->offset_size;
        symbols->hash_size = old->hash_size;
        symbols->srcmodule_size = old->srcmodule_size;
        symbols->pdbimport_size = 0;
        symbols->hash1_file = old->hash1_file;
        symbols->hash2_file = old->hash2_file;
        symbols->gsym_file = old->gsym_file;

        *header_size = sizeof(PDB_SYMBOLS_OLD);
    }
    else
    {

        *symbols = *(const PDB_SYMBOLS*)image;
        *header_size = sizeof(PDB_SYMBOLS);
    }
}
