
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const FILTER_STAR ;

__attribute__((used)) static __inline const char* skip_stars(
    const char *filter)
{
    while (*filter == FILTER_STAR)
        filter++;
    return filter;
}
