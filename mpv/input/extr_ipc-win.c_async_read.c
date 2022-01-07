
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OVERLAPPED ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ GetLastError () ;
 scalar_t__ ReadFile (int ,void*,unsigned int,int *,int *) ;

__attribute__((used)) static DWORD async_read(HANDLE file, void *buf, unsigned size, OVERLAPPED* ol)
{
    DWORD err = ReadFile(file, buf, size, ((void*)0), ol) ? 0 : GetLastError();
    return err == ERROR_IO_PENDING ? 0 : err;
}
