
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRSRC ;
typedef int HRESULT ;
typedef int HMODULE ;
typedef int HGLOBAL ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int LoadResource (int ,int ) ;
 void* LockResource (int ) ;
 int S_OK ;
 scalar_t__ SizeofResource (int ,int ) ;

HRESULT load_resource_into_memory(HMODULE module, HRSRC resinfo, void **buffer, DWORD *length)
{
    HGLOBAL resource;

    *length = SizeofResource(module, resinfo);
    if(*length == 0) return HRESULT_FROM_WIN32(GetLastError());

    resource = LoadResource(module, resinfo);
    if( !resource ) return HRESULT_FROM_WIN32(GetLastError());

    *buffer = LockResource(resource);
    if(*buffer == ((void*)0)) return HRESULT_FROM_WIN32(GetLastError());

    return S_OK;
}
