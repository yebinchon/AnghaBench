
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * malloc (int) ;

wchar_t *
utf8to16(const char *utf8)
{
    int n = MultiByteToWideChar(CP_UTF8, 0, utf8, -1, ((void*)0), 0);
    wchar_t *utf16 = malloc(n * sizeof(wchar_t));
    if (!utf16)
    {
        return ((void*)0);
    }
    MultiByteToWideChar(CP_UTF8, 0, utf8, -1, utf16, n);
    return utf16;
}
