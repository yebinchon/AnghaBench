
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type_offset; int file; int last_index; int first_index; int type_size; int version; } ;
struct TYPE_5__ {int file; int last_index; int first_index; int type_size; int version; } ;
typedef TYPE_1__ PDB_TYPES_OLD ;
typedef TYPE_2__ PDB_TYPES ;
typedef int DWORD ;
typedef int BYTE ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void pdb_convert_types_header(PDB_TYPES* types, const BYTE* image)
{
    memset(types, 0, sizeof(PDB_TYPES));
    if (!image) return;

    if (*(const DWORD*)image < 19960000)
    {

        const PDB_TYPES_OLD* old = (const PDB_TYPES_OLD*)image;
        types->version = old->version;
        types->type_offset = sizeof(PDB_TYPES_OLD);
        types->type_size = old->type_size;
        types->first_index = old->first_index;
        types->last_index = old->last_index;
        types->file = old->file;
    }
    else
    {

        *types = *(const PDB_TYPES*)image;
    }
}
