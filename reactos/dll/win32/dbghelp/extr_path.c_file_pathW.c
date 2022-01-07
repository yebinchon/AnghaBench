
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int is_sepW (int const) ;
 int strlenW (int const*) ;
 int strncpyW (int*,int const*,int) ;

__attribute__((used)) static inline void file_pathW(const WCHAR* srcFileNameW,
    WCHAR* dstFilePathW)
{
    int len;

    for (len = strlenW(srcFileNameW) - 1; (len > 0) && (!is_sepW(srcFileNameW[len])); len--);

    strncpyW(dstFilePathW, srcFileNameW, len);
    dstFilePathW[len] = L'\0';
}
