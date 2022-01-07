
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int WriteFile (void*,void const*,int ,int *,int *) ;

__attribute__((used)) static BOOL CRYPT_FileOutputFunc(void *handle, const void *buffer, DWORD size)
{
    return WriteFile(handle, buffer, size, &size, ((void*)0));
}
