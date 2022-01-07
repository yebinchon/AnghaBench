
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int toc; } ;
struct TYPE_4__ {int toc; } ;
struct TYPE_6__ {TYPE_2__ ds; TYPE_1__ jg; } ;
struct pdb_file_info {int kind; TYPE_3__ u; scalar_t__ image; } ;
struct PDB_JG_HEADER {int dummy; } ;
struct PDB_DS_HEADER {int dummy; } ;
typedef int DWORD ;




 void* pdb_read_ds_file (struct PDB_DS_HEADER const*,int ,int ) ;
 void* pdb_read_jg_file (struct PDB_JG_HEADER const*,int ,int ) ;

__attribute__((used)) static void* pdb_read_file(const struct pdb_file_info* pdb_file,
                           DWORD file_nr)
{
    switch (pdb_file->kind)
    {
    case 128:
        return pdb_read_jg_file((const struct PDB_JG_HEADER*)pdb_file->image,
                                pdb_file->u.jg.toc, file_nr);
    case 129:
        return pdb_read_ds_file((const struct PDB_DS_HEADER*)pdb_file->image,
                                pdb_file->u.ds.toc, file_nr);
    }
    return ((void*)0);
}
