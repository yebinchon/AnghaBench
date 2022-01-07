
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 scalar_t__ iswdigit (int const) ;
 char towupper (int const) ;

__attribute__((used)) static inline int hex_to_int(const WCHAR wch) {
    if(towupper(wch)>='A' && towupper(wch)<='F') return towupper(wch)-'A'+10;
    if(iswdigit(wch)) return wch-'0';
    return -1;
}
