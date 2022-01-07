
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int * HANDLE ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int * CreateFileW (scalar_t__,int ,int ,int *,int ,int,int *) ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int OPEN_EXISTING ;

__attribute__((used)) static HANDLE
OpenRdpFile(LPWSTR path, BOOL bWrite)
{
    HANDLE hFile = ((void*)0);

    if (path)
    {
        hFile = CreateFileW(path,
                            bWrite ? GENERIC_WRITE : GENERIC_READ,
                            0,
                            ((void*)0),
                            bWrite ? CREATE_ALWAYS : OPEN_EXISTING,
                            FILE_ATTRIBUTE_NORMAL | FILE_ATTRIBUTE_HIDDEN,
                            ((void*)0));
    }

    return hFile;
}
