
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int printf (char*) ;

void* get_symbol(HANDLE hProcess, const char* name, const char* lib)
{
    printf("get_symbol: not implemented on this platform\n");
    return ((void*)0);
}
