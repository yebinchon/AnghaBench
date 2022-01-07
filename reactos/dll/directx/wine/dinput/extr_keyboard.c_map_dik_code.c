
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef scalar_t__ BYTE ;


 scalar_t__ DIDEVTYPEKEYBOARD_JAPAN106 ;
 scalar_t__ DIK_AT ;
 scalar_t__ DIK_BACKSLASH ;
 scalar_t__ DIK_CIRCUMFLEX ;
 scalar_t__ DIK_COLON ;
 scalar_t__ DIK_KANJI ;
 scalar_t__ DIK_LBRACKET ;
 scalar_t__ DIK_RBRACKET ;
 int MAPVK_VK_TO_VSC ;
 scalar_t__ MapVirtualKeyW (scalar_t__,int ) ;

__attribute__((used)) static BYTE map_dik_code(DWORD scanCode, DWORD vkCode, DWORD subType)
{
    if (!scanCode)
        scanCode = MapVirtualKeyW(vkCode, MAPVK_VK_TO_VSC);

    if (subType == DIDEVTYPEKEYBOARD_JAPAN106)
    {
        switch (scanCode)
        {
        case 0x0d:
            scanCode = DIK_CIRCUMFLEX;
            break;
        case 0x1a:
            scanCode = DIK_AT;
            break;
        case 0x1b:
            scanCode = DIK_LBRACKET;
            break;
        case 0x28:
            scanCode = DIK_COLON;
            break;
        case 0x29:
            scanCode = DIK_KANJI;
            break;
        case 0x2b:
            scanCode = DIK_RBRACKET;
            break;
        case 0x73:
            scanCode = DIK_BACKSLASH;
            break;
        }
    }
    return scanCode;
}
