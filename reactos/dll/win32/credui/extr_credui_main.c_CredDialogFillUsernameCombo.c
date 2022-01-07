
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cred_dialog_params {int dwFlags; } ;
struct TYPE_6__ {int iItem; int * pszText; int mask; } ;
struct TYPE_5__ {scalar_t__ Type; int * UserName; } ;
typedef TYPE_1__* PCREDENTIALW ;
typedef int LPARAM ;
typedef int HWND ;
typedef size_t DWORD ;
typedef TYPE_2__ COMBOBOXEXITEMW ;
typedef scalar_t__ BOOL ;


 int CBEIF_TEXT ;
 int CBEM_INSERTITEMW ;
 int CREDUI_FLAGS_GENERIC_CREDENTIALS ;
 scalar_t__ CRED_TYPE_GENERIC ;
 int CredEnumerateW (int *,int ,size_t*,TYPE_1__***) ;
 int CredFree (TYPE_1__**) ;
 scalar_t__ FALSE ;
 int SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ TRUE ;
 int lstrcmpW (int *,int *) ;

__attribute__((used)) static void CredDialogFillUsernameCombo(HWND hwndUsername, const struct cred_dialog_params *params)
{
    DWORD count;
    DWORD i;
    PCREDENTIALW *credentials;

    if (!CredEnumerateW(((void*)0), 0, &count, &credentials))
        return;

    for (i = 0; i < count; i++)
    {
        COMBOBOXEXITEMW comboitem;
        DWORD j;
        BOOL duplicate = FALSE;

        if (!credentials[i]->UserName)
            continue;

        if (params->dwFlags & CREDUI_FLAGS_GENERIC_CREDENTIALS)
        {
            if (credentials[i]->Type != CRED_TYPE_GENERIC)
            {
                credentials[i]->UserName = ((void*)0);
                continue;
            }
        }
        else if (credentials[i]->Type == CRED_TYPE_GENERIC)
        {
            credentials[i]->UserName = ((void*)0);
            continue;
        }


        for (j = 0; j < i; j++)
            if (credentials[j]->UserName
                && !lstrcmpW(credentials[i]->UserName, credentials[j]->UserName))
            {
                duplicate = TRUE;
                break;
            }

        if (duplicate)
            continue;

        comboitem.mask = CBEIF_TEXT;
        comboitem.iItem = -1;
        comboitem.pszText = credentials[i]->UserName;
        SendMessageW(hwndUsername, CBEM_INSERTITEMW, 0, (LPARAM)&comboitem);
    }

    CredFree(credentials);
}
