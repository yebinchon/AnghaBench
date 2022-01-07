
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * bwstrdup_n (int const*,int ) ;
 int wcslen (int const*) ;

__attribute__((used)) static inline wchar_t *bwstrdup(const wchar_t *str)
{
 if (!str)
  return ((void*)0);

 return bwstrdup_n(str, wcslen(str));
}
