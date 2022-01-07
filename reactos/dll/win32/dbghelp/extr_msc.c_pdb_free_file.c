
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * toc; } ;
struct TYPE_4__ {int * toc; } ;
struct TYPE_6__ {TYPE_2__ ds; TYPE_1__ jg; } ;
struct pdb_file_info {int kind; int stream_dict; TYPE_3__ u; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;


 int pdb_free (int *) ;

__attribute__((used)) static void pdb_free_file(struct pdb_file_info* pdb_file)
{
    switch (pdb_file->kind)
    {
    case 128:
        pdb_free(pdb_file->u.jg.toc);
        pdb_file->u.jg.toc = ((void*)0);
        break;
    case 129:
        pdb_free(pdb_file->u.ds.toc);
        pdb_file->u.ds.toc = ((void*)0);
        break;
    }
    HeapFree(GetProcessHeap(), 0, pdb_file->stream_dict);
}
