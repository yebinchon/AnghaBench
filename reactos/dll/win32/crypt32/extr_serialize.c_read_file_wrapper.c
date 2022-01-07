
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int ReadFile (void*,void*,int ,int *,int *) ;

__attribute__((used)) static BOOL read_file_wrapper(void *handle, void *buffer, DWORD bytesToRead,
 DWORD *bytesRead)
{
    return ReadFile(handle, buffer, bytesToRead, bytesRead, ((void*)0));
}
