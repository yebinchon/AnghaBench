
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;


 int * strdupW (int ) ;

__attribute__((used)) static inline WCHAR *MergeChmString(LPCWSTR src, WCHAR **dst)
{
    if(*dst == ((void*)0))
        *dst = strdupW(src);
    return *dst;
}
