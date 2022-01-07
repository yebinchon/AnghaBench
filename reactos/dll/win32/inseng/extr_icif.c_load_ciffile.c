
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inf_file {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct ciffile {int ref; TYPE_1__ ICifFile_iface; int groups; int components; } ;
typedef TYPE_1__ ICifFile ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int ICifFile_Release (TYPE_1__*) ;
 int S_OK ;
 int ciffileVtbl ;
 struct ciffile* heap_alloc_zero (int) ;
 int inf_free (struct inf_file*) ;
 int inf_load (char const*,struct inf_file**) ;
 int list_init (int *) ;
 int process_inf (struct ciffile*,struct inf_file*) ;

__attribute__((used)) static HRESULT load_ciffile(const char *path, ICifFile **icif)
{
    struct inf_file *inf = ((void*)0);
    struct ciffile *file;
    HRESULT hr = E_FAIL;

    file = heap_alloc_zero(sizeof(*file));
    if(!file) return E_OUTOFMEMORY;

    file->ICifFile_iface.lpVtbl = &ciffileVtbl;
    file->ref = 1;

    list_init(&file->components);
    list_init(&file->groups);

    hr = inf_load(path, &inf);
    if (FAILED(hr)) goto error;

    hr = process_inf(file, inf);
    if (FAILED(hr)) goto error;

    *icif = &file->ICifFile_iface;
    return S_OK;

error:
    if (inf) inf_free(inf);
    ICifFile_Release(&file->ICifFile_iface);
    return hr;
}
