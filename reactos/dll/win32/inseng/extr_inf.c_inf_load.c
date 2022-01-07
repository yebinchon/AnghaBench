
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inf_file {int size; void* content; int sections; } ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GetFileSizeEx (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,void*,int,int*,int *) ;
 int S_OK ;
 void* heap_alloc_zero (int) ;
 int inf_free (struct inf_file*) ;
 int inf_process_content (struct inf_file*) ;
 int list_init (int *) ;

HRESULT inf_load(const char *path, struct inf_file **inf_file)
{
    LARGE_INTEGER file_size;
    struct inf_file *inf;
    HRESULT hr = E_FAIL;
    HANDLE file;
    DWORD read;

    file = CreateFileA(path, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file == INVALID_HANDLE_VALUE) return E_FAIL;

    inf = heap_alloc_zero(sizeof(*inf));
    if (!inf) goto error;

    if (!GetFileSizeEx(file, &file_size))
        goto error;

    inf->size = file_size.QuadPart;

    inf->content = heap_alloc_zero(inf->size);
    if (!inf->content) goto error;

    list_init(&inf->sections);

    if (!ReadFile(file, inf->content, inf->size, &read, ((void*)0)) || read != inf->size)
        goto error;

    hr = inf_process_content(inf);
    if (FAILED(hr)) goto error;

    CloseHandle(file);
    *inf_file = inf;
    return S_OK;

error:
    if (inf) inf_free(inf);
    CloseHandle(file);
    return hr;
}
