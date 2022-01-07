
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



size_t
pg_wchar_strlen(const pg_wchar *str)
{
 const pg_wchar *s;

 for (s = str; *s; ++s)
  ;
 return (s - str);
}
