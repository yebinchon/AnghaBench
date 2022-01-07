
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int DWORD ;



__attribute__((used)) static DWORD msi_atou(LPCWSTR str)
{
 DWORD ret = 0;
 while(*str >= '0' && *str <= '9')
 {
  ret *= 10;
  ret += (*str - '0');
  str++;
 }
 return ret;
}
