
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
BOOL TrimNonPrintable(PCHAR DmiString)
{
    PCHAR c = DmiString;
    if (!c)
    {
        return FALSE;
    }
    while (*c)
    {
        if (*c >= 0x20 && *c <= 0x7e)
        {
            c++;
        }
        else
        {
            *c = 0;
            return TRUE;
        }
    }
    return FALSE;
}
