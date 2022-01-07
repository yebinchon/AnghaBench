
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;
 int FALSE ;
 int TRUE ;

BOOL IsClipboardFormatSupported(UINT uFormat)
{
    switch (uFormat)
    {
        case 130:
        case 128:
        case 129:
        case 131:
        case 137:
        case 134:
        case 132:
        case 136:
        case 135:
        case 133:
        {
            return TRUE;
        }

        default:
        {
            return FALSE;
        }
    }
}
