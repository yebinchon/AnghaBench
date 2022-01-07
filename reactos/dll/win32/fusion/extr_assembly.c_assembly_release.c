
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hfile; int hmap; int data; struct TYPE_4__* path; struct TYPE_4__* metadatahdr; } ;
typedef int HRESULT ;
typedef TYPE_1__ ASSEMBLY ;


 int CloseHandle (int ) ;
 int S_OK ;
 int UnmapViewOfFile (int ) ;
 int heap_free (TYPE_1__*) ;

HRESULT assembly_release(ASSEMBLY *assembly)
{
    if (!assembly)
        return S_OK;

    heap_free(assembly->metadatahdr);
    heap_free(assembly->path);
    UnmapViewOfFile(assembly->data);
    CloseHandle(assembly->hmap);
    CloseHandle(assembly->hfile);
    heap_free(assembly);

    return S_OK;
}
