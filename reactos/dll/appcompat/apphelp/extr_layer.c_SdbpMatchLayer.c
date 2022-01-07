
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t PCWSTR ;
typedef int BOOL ;


 int _wcsnicmp (size_t,size_t,size_t) ;
 int wcsicmp (size_t,size_t) ;
 size_t wcslen (size_t) ;

BOOL SdbpMatchLayer(PCWSTR start, PCWSTR end, PCWSTR compare)
{
    size_t len;
    if (!end)
        return !wcsicmp(start, compare);
    len = end - start;
    return wcslen(compare) == len && !_wcsnicmp(start, compare, len);
}
