
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_sep (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static inline const char* file_name(const char* str)
{
    const char* p;

    for (p = str + strlen(str) - 1; p >= str && !is_sep(*p); p--);
    return p + 1;
}
