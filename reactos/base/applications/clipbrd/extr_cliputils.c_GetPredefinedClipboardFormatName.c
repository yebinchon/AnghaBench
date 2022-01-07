
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PVOID ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef int HINSTANCE ;
typedef int BOOL ;
 int LoadStringA (int ,int,int ,int) ;
 int LoadStringW (int ,int,int ,int) ;
__attribute__((used)) static int
GetPredefinedClipboardFormatName(HINSTANCE hInstance,
                                 UINT uFormat,
                                 BOOL Unicode,
                                 PVOID lpszFormat,
                                 UINT cch)
{
    static
    struct FORMAT_NAME
    {
        UINT uFormat;
        UINT uResID;
    } uFormatList[] = {

        {144 , 129 },
        {157 , 140 },
        {150, 133},
        {145 , 130 },
        {154 , 137 },
        {143 , 0 },
        {149 , 132 },
        {156 , 139 },
        {148 , 131 },
        {147 , 0 },
        {146 , 0 },
        {141 , 0 },
        {142 , 128 },
        {153 , 136 },







    };

    switch (uFormat)
    {
        case 144: case 157: case 150:
        case 145: case 154:
        case 149: case 156: case 148:

        case 142: case 153:






        {
            if (Unicode)
                return LoadStringW(hInstance, uFormatList[uFormat-1].uResID, (LPWSTR)lpszFormat, cch);
            else
                return LoadStringA(hInstance, uFormatList[uFormat-1].uResID, (LPSTR)lpszFormat, cch);
        }

        default:
        {
            return 0;
        }
    }
}
