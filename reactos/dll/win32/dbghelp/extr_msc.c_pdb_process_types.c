
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
union codeview_type {TYPE_1__ generic; } ;
struct pdb_file_info {int dummy; } ;
struct msc_debug_info {int module; } ;
struct codeview_type_parse {int num; int* offset; int const* table; int module; } ;
struct TYPE_5__ {int version; int last_index; int first_index; int type_offset; int type_size; } ;
typedef TYPE_2__ PDB_TYPES ;
typedef int DWORD ;
typedef int BYTE ;


 int ERR (char*,int) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int codeview_parse_type_table (struct codeview_type_parse*) ;
 int pdb_convert_types_header (TYPE_2__*,int *) ;
 int pdb_free (int *) ;
 int * pdb_read_file (struct pdb_file_info const*,int) ;

__attribute__((used)) static void pdb_process_types(const struct msc_debug_info* msc_dbg,
                              const struct pdb_file_info* pdb_file)
{
    BYTE* types_image = ((void*)0);

    types_image = pdb_read_file(pdb_file, 2);
    if (types_image)
    {
        PDB_TYPES types;
        struct codeview_type_parse ctp;
        DWORD total;
        const BYTE* ptr;
        DWORD* offset;

        pdb_convert_types_header(&types, types_image);


        switch (types.version)
        {
        case 19950410:
        case 19951122:
        case 19961031:
        case 19990903:
        case 20040203:
            break;
        default:
            ERR("-Unknown type info version %d\n", types.version);
        }

        ctp.module = msc_dbg->module;



        total = types.last_index - types.first_index + 1;
        offset = HeapAlloc(GetProcessHeap(), 0, sizeof(DWORD) * total);
        ctp.table = ptr = types_image + types.type_offset;
        ctp.num = 0;
        while (ptr < ctp.table + types.type_size && ctp.num < total)
        {
            offset[ctp.num++] = ptr - ctp.table;
            ptr += ((const union codeview_type*)ptr)->generic.len + 2;
        }
        ctp.offset = offset;


        codeview_parse_type_table(&ctp);
        HeapFree(GetProcessHeap(), 0, offset);
        pdb_free(types_image);
    }
}
