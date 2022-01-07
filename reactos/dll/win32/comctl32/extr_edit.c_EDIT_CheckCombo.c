
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int hwndSelf; int hwndListBox; } ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int const CB_GETDROPPEDSTATE ;
 int const CB_GETEXTENDEDUI ;
 int const CB_SETEXTENDEDUI ;
 int const CB_SHOWDROPDOWN ;
 int FALSE ;
 int GetParent (int ) ;
 scalar_t__ SendMessageW (int ,int const,int,int ) ;
 int TRACE (char*,int ,int,scalar_t__) ;
 int TRUE ;
 scalar_t__ VK_DOWN ;
 int VK_F4 ;
 scalar_t__ VK_UP ;



__attribute__((used)) static BOOL EDIT_CheckCombo(EDITSTATE *es, UINT msg, INT key)
{
    HWND hLBox = es->hwndListBox;
    HWND hCombo;
    BOOL bDropped;
    int nEUI;

    if (!hLBox)
        return FALSE;

    hCombo = GetParent(es->hwndSelf);
    bDropped = TRUE;
    nEUI = 0;

    TRACE("[%p]: handling msg %x (%x)\n", es->hwndSelf, msg, key);

    if (key == VK_UP || key == VK_DOWN)
    {
        if (SendMessageW(hCombo, CB_GETEXTENDEDUI, 0, 0))
            nEUI = 1;

        if (msg == 129 || nEUI)
            bDropped = (BOOL)SendMessageW(hCombo, CB_GETDROPPEDSTATE, 0, 0);
    }

    switch (msg)
    {
    case 129:
        if (!bDropped && nEUI && (key == VK_UP || key == VK_DOWN))
        {

            SendMessageW(hCombo, CB_SETEXTENDEDUI, FALSE, 0);
            key = VK_F4;
            nEUI = 2;
        }

        SendMessageW(hLBox, 129, key, 0);
        break;

    case 128:
        if (nEUI)
           SendMessageW(hCombo, CB_SHOWDROPDOWN, !bDropped, 0);
        else
           SendMessageW(hLBox, 129, VK_F4, 0);
        break;
    }

    if (nEUI == 2)
        SendMessageW(hCombo, CB_SETEXTENDEDUI, TRUE, 0);

    return TRUE;
}
