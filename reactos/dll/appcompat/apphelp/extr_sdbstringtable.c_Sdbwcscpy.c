
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int INT ;


 int SdbpStrlen (scalar_t__ const*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;

INT Sdbwcscpy(WCHAR* wcDest, size_t numElement, const WCHAR *wcSrc)
{
    size_t size = 0;
    if(!wcDest || !numElement)
        return 22;

    wcDest[0] = 0;

    if(!wcSrc)
        return 22;

    size = SdbpStrlen(wcSrc) + 1;

    if(size > numElement)
        return 34;

    memcpy(wcDest, wcSrc, size * sizeof(WCHAR));

    return 0;
}
