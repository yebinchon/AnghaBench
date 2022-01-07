
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPDWORD ;
typedef char* LPCWSTR ;


 int strtoulW (char*,int *,int) ;

__attribute__((used)) static LPCWSTR COMM_ParseNumber(LPCWSTR ptr, LPDWORD lpnumber)
{
 if(*ptr < '0' || *ptr > '9') return ((void*)0);
 *lpnumber = strtoulW(ptr, ((void*)0), 10);
 while(*ptr >= '0' && *ptr <= '9') ptr++;
 return ptr;
}
