
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int CloseHandle (int *) ;

void
close_if_open(HANDLE h)
{
    if (h != ((void*)0))
    {
        CloseHandle(h);
    }
}
