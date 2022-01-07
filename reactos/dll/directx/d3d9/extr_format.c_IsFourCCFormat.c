
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DFORMAT ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isalnum (int ) ;

BOOL IsFourCCFormat(D3DFORMAT Format)
{
    CHAR* cFormat = (CHAR*)&Format;
    if (isalnum(cFormat[0]) &&
        isalnum(cFormat[1]) &&
        isalnum(cFormat[2]) &&
        isalnum(cFormat[3]))
    {
        return TRUE;
    }

    return FALSE;
}
