
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static int wchar_forbidden(wchar_t sym)
{

 if (sym >= 0xd800 && sym <= 0xdfff)
  return -1;

 return 0;
}
