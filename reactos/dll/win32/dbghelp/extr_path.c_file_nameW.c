
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int is_sepW (int const) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline const WCHAR* file_nameW(const WCHAR* str)
{
    const WCHAR* p;

    for (p = str + strlenW(str) - 1; p >= str && !is_sepW(*p); p--);
    return p + 1;
}
