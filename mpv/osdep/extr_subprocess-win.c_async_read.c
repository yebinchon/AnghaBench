
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OVERLAPPED ;
typedef int HANDLE ;


 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ GetLastError () ;
 int ReadFile (int ,void*,unsigned int,int *,int *) ;

__attribute__((used)) static int async_read(HANDLE file, void *buf, unsigned size, OVERLAPPED* ol)
{
    if (!ReadFile(file, buf, size, ((void*)0), ol))
        return (GetLastError() == ERROR_IO_PENDING) ? 0 : -1;
    return 0;
}
