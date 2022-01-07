
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int version; } ;
struct TYPE_11__ {int index; } ;
struct TYPE_13__ {int lineno_size; int symbol_size; TYPE_2__ range; int file; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_12__ {int lineno_size; int symbol_size; TYPE_1__ range; int file; } ;
typedef TYPE_3__ PDB_SYMBOL_FILE_EX ;
typedef TYPE_4__ PDB_SYMBOL_FILE ;
typedef TYPE_5__ PDB_SYMBOLS ;


 int memcpy (TYPE_3__*,void const*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void pdb_convert_symbol_file(const PDB_SYMBOLS* symbols,
                                    PDB_SYMBOL_FILE_EX* sfile,
                                    unsigned* size, const void* image)

{
    if (symbols->version < 19970000)
    {
        const PDB_SYMBOL_FILE *sym_file = image;
        memset(sfile, 0, sizeof(*sfile));
        sfile->file = sym_file->file;
        sfile->range.index = sym_file->range.index;
        sfile->symbol_size = sym_file->symbol_size;
        sfile->lineno_size = sym_file->lineno_size;
        *size = sizeof(PDB_SYMBOL_FILE) - 1;
    }
    else
    {
        memcpy(sfile, image, sizeof(PDB_SYMBOL_FILE_EX));
        *size = sizeof(PDB_SYMBOL_FILE_EX) - 1;
    }
}
