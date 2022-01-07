
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int desktop_color; } ;
struct TYPE_7__ {int lStructSize; int Flags; int rgbResult; int * lpTemplateName; int * lpfnHook; scalar_t__ lCustData; scalar_t__ lpCustColors; int * hInstance; int hwndOwner; } ;
struct TYPE_6__ {scalar_t__ custom_colors; int bClrBackgroundChanged; } ;
typedef TYPE_1__* PBACKGROUND_DATA ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef int * HKEY ;
typedef int DWORD ;
typedef TYPE_2__ CHOOSECOLOR ;


 int CC_ANYCOLOR ;
 int CC_FULLOPEN ;
 int CC_RGBINIT ;
 scalar_t__ ChooseColor (TYPE_2__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetDlgItem (int ,int ) ;
 int GetParent (int ) ;
 int HKEY_CURRENT_USER ;
 int IDC_BACKGROUND_PREVIEW ;
 int InvalidateRect (int ,int *,int ) ;
 int KEY_QUERY_VALUE ;
 int KEY_SET_VALUE ;
 int PropSheet_Changed (int ,int ) ;
 int REG_BINARY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int **,int *) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int **) ;
 scalar_t__ RegQueryValueEx (int *,int ,int *,int*,int ,int*) ;
 int RegSetValueEx (int *,int ,int ,int,int ,int) ;
 int TEXT (char*) ;
 int TRUE ;
 TYPE_3__ g_GlobalData ;

__attribute__((used)) static VOID
OnColorButton(HWND hwndDlg, PBACKGROUND_DATA pData)
{

    HKEY hKey = ((void*)0);
    LONG res = ERROR_SUCCESS;
    CHOOSECOLOR cc;

    res = RegCreateKeyEx(HKEY_CURRENT_USER, TEXT("Control Panel\\Appearance"), 0, ((void*)0),
                         REG_OPTION_NON_VOLATILE, KEY_QUERY_VALUE, ((void*)0), &hKey, ((void*)0));

    if (res == ERROR_SUCCESS)
    {

        DWORD dwType = REG_BINARY;
        DWORD cbData = sizeof(pData->custom_colors);
        res = RegQueryValueEx(hKey, TEXT("CustomColors"), ((void*)0), &dwType,
                              (LPBYTE)pData->custom_colors, &cbData);
        RegCloseKey(hKey);
        hKey = ((void*)0);
    }



    cc.lStructSize = sizeof(CHOOSECOLOR);
    cc.hwndOwner = hwndDlg;
    cc.hInstance = ((void*)0);
    cc.rgbResult = g_GlobalData.desktop_color;
    cc.lpCustColors = pData->custom_colors;
    cc.Flags = CC_ANYCOLOR |
               CC_FULLOPEN |
               CC_RGBINIT ;
    cc.lCustData = 0;
    cc.lpfnHook = ((void*)0);
    cc.lpTemplateName = ((void*)0);
    if (ChooseColor(&cc))
    {

        g_GlobalData.desktop_color = cc.rgbResult;
        pData->bClrBackgroundChanged = TRUE;


        PropSheet_Changed(GetParent(hwndDlg), hwndDlg);


        InvalidateRect(GetDlgItem(hwndDlg, IDC_BACKGROUND_PREVIEW), ((void*)0), TRUE);


        res = RegOpenKeyEx(HKEY_CURRENT_USER, TEXT("Control Panel\\Appearance"), 0,
                           KEY_SET_VALUE, &hKey);
        if (res == ERROR_SUCCESS)
        {

            RegSetValueEx(hKey, TEXT("CustomColors"), 0, REG_BINARY,
                          (LPBYTE)pData->custom_colors, sizeof(pData->custom_colors));
            RegCloseKey(hKey);
            hKey = ((void*)0);
        }
    }
}
