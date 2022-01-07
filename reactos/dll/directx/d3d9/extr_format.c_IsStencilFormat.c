
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DFORMAT ;
typedef int BOOL ;






 int FALSE ;
 int TRUE ;

BOOL IsStencilFormat(D3DFORMAT Format)
{
    switch (Format)
    {
    case 131:
    case 129:
    case 128:
    case 130:
        return TRUE;

    default:
        return FALSE;
    }
}
