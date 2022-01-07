
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int* LPBYTE ;
typedef int DWORD ;


 int * COMM_ParseNumber (int *,int*) ;

__attribute__((used)) static LPCWSTR COMM_ParseByteSize(LPCWSTR ptr, LPBYTE lpbytesize)
{
 DWORD temp;

 if(!(ptr = COMM_ParseNumber(ptr, &temp)))
  return ((void*)0);

 if(temp >= 5 && temp <= 8)
 {
  *lpbytesize = temp;
  return ptr;
 }
 else
  return ((void*)0);
}
