
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_an (char const*,int ) ;
 int memcpy (char*,char const*,int ) ;
 int read_dword (char const**,int *) ;

__attribute__((used)) static HRESULT d3dx9_parse_name(char **name, const char *ptr)
{
    DWORD size;

    read_dword(&ptr, &size);
    TRACE("Name size: %#x\n", size);

    if (!size)
    {
        return D3D_OK;
    }

    *name = HeapAlloc(GetProcessHeap(), 0, size);
    if (!*name)
    {
        ERR("Failed to allocate name memory.\n");
        return E_OUTOFMEMORY;
    }

    TRACE("Name: %s.\n", debugstr_an(ptr, size));
    memcpy(*name, ptr, size);

    return D3D_OK;
}
