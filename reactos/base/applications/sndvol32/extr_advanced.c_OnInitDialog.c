
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
typedef int VOID ;
typedef size_t UINT ;
struct TYPE_14__ {int dwMaximum; int dwMinimum; } ;
struct TYPE_22__ {int dwControlType; int dwControlID; int szName; TYPE_1__ Bounds; } ;
struct TYPE_21__ {scalar_t__ fValue; } ;
struct TYPE_20__ {int dwValue; } ;
struct TYPE_19__ {int* dwMaximum; int* dwMinimum; TYPE_4__* Context; int * dwControlId; void** bEnabled; } ;
struct TYPE_18__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_17__ {TYPE_3__* MixerWindow; int Mixer; int Line; int LineName; } ;
struct TYPE_15__ {int cy; } ;
struct TYPE_16__ {TYPE_2__ baseUnit; } ;
typedef TYPE_5__ RECT ;
typedef TYPE_6__* PADVANCED_DATA ;
typedef TYPE_7__ MIXERCONTROLDETAILS_UNSIGNED ;
typedef TYPE_8__ MIXERCONTROLDETAILS_BOOLEAN ;
typedef int LPVOID ;
typedef int LPPOINT ;
typedef TYPE_9__* LPMIXERCONTROL ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int BM_SETCHECK ;
 int EnableWindow (int ,void*) ;
 void* FALSE ;
 int GetDlgItem (int ,int) ;
 int GetProcessHeap () ;
 int GetWindowRect (int ,TYPE_5__*) ;
 int HWND_DESKTOP ;
 int HWND_TOP ;
 int HeapFree (int ,int ,TYPE_9__*) ;
 int IDC_ADV_BASS_LOW ;
 int IDC_ADV_BASS_SLIDER ;
 int IDC_ADV_OTHER_CHECK1 ;
 int IDC_ADV_OTHER_CHECK2 ;
 int IDC_ADV_OTHER_CONTROLS ;
 int IDC_ADV_OTHER_TEXT ;
 int IDC_ADV_TREBLE_LOW ;
 int IDC_ADV_TREBLE_SLIDER ;
 int IDOK ;
 scalar_t__ IDS_ADVANCED_CONTROLS ;
 scalar_t__ IDS_OTHER_CONTROLS1 ;
 int LoadStringW (int ,scalar_t__,int *,int ) ;
 scalar_t__ MAKELONG (int,int) ;
 int MIXERCONTROL_CONTROLTYPE_BASS ;
 int MIXERCONTROL_CONTROLTYPE_BOOLEAN ;
 int MIXERCONTROL_CONTROLTYPE_MUTE ;
 int MIXERCONTROL_CONTROLTYPE_TREBLE ;
 int MIXERCONTROL_CT_CLASS_MASK ;
 int MIXERCONTROL_CT_SUBCLASS_MASK ;
 int MIXERCONTROL_CT_UNITS_MASK ;
 int MapWindowPoints (int ,int ,int ,int) ;
 scalar_t__ MulDiv (int,int ,int) ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int SW_SHOWNORMAL ;
 int SendDlgItemMessageW (int ,int,int ,int ,int) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int SetWindowTextW (int ,int *) ;
 int ShowWindow (int ,int ) ;
 int SndMixerGetVolumeControlDetails (int ,int ,int,int,int ) ;
 scalar_t__ SndMixerQueryControls (int ,size_t*,int ,TYPE_9__**) ;
 int StringCchPrintfW (int *,int ,int *,int ) ;
 int TBM_SETPAGESIZE ;
 int TBM_SETPOS ;
 int TBM_SETRANGE ;
 int TBM_SETTIC ;
 void* TRUE ;
 int VOLUME_MAX ;
 int VOLUME_MIN ;
 scalar_t__ VOLUME_PAGE_SIZE ;
 int VOLUME_TICKS ;
 int hAppInstance ;

__attribute__((used)) static
VOID
OnInitDialog(
    HWND hwndDlg,
    PADVANCED_DATA pData)
{
    MIXERCONTROLDETAILS_UNSIGNED UnsignedDetails;
    MIXERCONTROLDETAILS_BOOLEAN BooleanDetails;
    WCHAR szRawBuffer[256], szCookedBuffer[256];
    LPMIXERCONTROL Control = ((void*)0);
    UINT ControlCount = 0, Index;
    DWORD i, dwStep, dwPosition;
    DWORD dwOtherControls = 0;
    RECT rect;
    LONG dy;


    LoadStringW(hAppInstance, IDS_ADVANCED_CONTROLS, szRawBuffer, ARRAYSIZE(szRawBuffer));
    StringCchPrintfW(szCookedBuffer, ARRAYSIZE(szCookedBuffer), szRawBuffer, pData->Context->LineName);
    SetWindowTextW(hwndDlg, szCookedBuffer);


    for (i = IDC_ADV_BASS_LOW; i<= IDC_ADV_TREBLE_SLIDER; i++)
        EnableWindow(GetDlgItem(hwndDlg, i), FALSE);


    SendDlgItemMessageW(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)MAKELONG(VOLUME_MIN, VOLUME_MAX));
    SendDlgItemMessageW(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)MAKELONG(VOLUME_MIN, VOLUME_MAX));
    SendDlgItemMessageW(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPAGESIZE, 0, (LPARAM)VOLUME_PAGE_SIZE);
    SendDlgItemMessageW(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPAGESIZE, 0, (LPARAM)VOLUME_PAGE_SIZE);
    SendDlgItemMessageW(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)0);
    SendDlgItemMessageW(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)0);


    dwStep = (VOLUME_MAX / (VOLUME_TICKS + 1));
    if (VOLUME_MAX % (VOLUME_TICKS + 1) != 0)
        dwStep++;
    for (i = dwStep; i < VOLUME_MAX; i += dwStep)
    {
        SendDlgItemMessageW(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETTIC, 0, (LPARAM)i);
        SendDlgItemMessageW(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETTIC, 0, (LPARAM)i);
    }


    for (i = IDC_ADV_OTHER_CONTROLS; i<= IDC_ADV_OTHER_CHECK2; i++)
        ShowWindow(GetDlgItem(hwndDlg, i), SW_HIDE);

    if (SndMixerQueryControls(pData->Context->Mixer, &ControlCount, pData->Context->Line, &Control))
    {
        for (Index = 0; Index < ControlCount; Index++)
        {
            if (Control[Index].dwControlType == MIXERCONTROL_CONTROLTYPE_BASS)
            {


                if (SndMixerGetVolumeControlDetails(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_UNSIGNED), (LPVOID)&UnsignedDetails) != -1)
                {
                    for (i = IDC_ADV_BASS_LOW; i<= IDC_ADV_BASS_SLIDER; i++)
                        EnableWindow(GetDlgItem(hwndDlg, i), TRUE);

                    dwStep = (Control[Index].Bounds.dwMaximum - Control[Index].Bounds.dwMinimum) / (VOLUME_MAX - VOLUME_MIN);
                    dwPosition = (UnsignedDetails.dwValue - Control[Index].Bounds.dwMinimum) / dwStep;
                    SendDlgItemMessageW(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPOS, (WPARAM)TRUE, dwPosition);

                    pData->bEnabled[0] = TRUE;
                    pData->dwControlId[0] = Control[Index].dwControlID;
                    pData->dwMaximum[0] = Control[Index].Bounds.dwMaximum;
                    pData->dwMinimum[0] = Control[Index].Bounds.dwMinimum;
                }
            }
            else if (Control[Index].dwControlType == MIXERCONTROL_CONTROLTYPE_TREBLE)
            {


                if (SndMixerGetVolumeControlDetails(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_UNSIGNED), (LPVOID)&UnsignedDetails) != -1)
                {
                    for (i = IDC_ADV_TREBLE_LOW; i<= IDC_ADV_TREBLE_SLIDER; i++)
                        EnableWindow(GetDlgItem(hwndDlg, i), TRUE);

                    dwStep = (Control[Index].Bounds.dwMaximum - Control[Index].Bounds.dwMinimum) / (VOLUME_MAX - VOLUME_MIN);
                    dwPosition = (UnsignedDetails.dwValue - Control[Index].Bounds.dwMinimum) / dwStep;
                    SendDlgItemMessageW(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPOS, (WPARAM)TRUE, dwPosition);

                    pData->bEnabled[1] = TRUE;
                    pData->dwControlId[1] = Control[Index].dwControlID;
                    pData->dwMaximum[1] = Control[Index].Bounds.dwMaximum;
                    pData->dwMinimum[1] = Control[Index].Bounds.dwMinimum;
                }
            }
            else if (((Control[Index].dwControlType & (MIXERCONTROL_CT_CLASS_MASK | MIXERCONTROL_CT_SUBCLASS_MASK | MIXERCONTROL_CT_UNITS_MASK)) == MIXERCONTROL_CONTROLTYPE_BOOLEAN) &&
                     (Control[Index].dwControlType != MIXERCONTROL_CONTROLTYPE_MUTE))
            {


                if (dwOtherControls < 2)
                {
                    if (SndMixerGetVolumeControlDetails(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_BOOLEAN), (LPVOID)&BooleanDetails) != -1)
                    {
                        LoadStringW(hAppInstance, IDS_OTHER_CONTROLS1 + dwOtherControls, szRawBuffer, ARRAYSIZE(szRawBuffer));
                        StringCchPrintfW(szCookedBuffer, ARRAYSIZE(szCookedBuffer), szRawBuffer, Control[Index].szName);
                        SetWindowTextW(GetDlgItem(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls), szCookedBuffer);

                        ShowWindow(GetDlgItem(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls), SW_SHOWNORMAL);

                        SendDlgItemMessageW(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls, BM_SETCHECK, (WPARAM)BooleanDetails.fValue, 0);

                        pData->bEnabled[dwOtherControls + 2] = TRUE;
                        pData->dwControlId[dwOtherControls + 2] = Control[Index].dwControlID;

                        dwOtherControls++;
                    }
                }
            }
        }


        HeapFree(GetProcessHeap(), 0, Control);
    }

    if (dwOtherControls != 0)
    {

        ShowWindow(GetDlgItem(hwndDlg, IDC_ADV_OTHER_CONTROLS), SW_SHOWNORMAL);
        ShowWindow(GetDlgItem(hwndDlg, IDC_ADV_OTHER_TEXT), SW_SHOWNORMAL);


        GetWindowRect(hwndDlg, &rect);

        dy = MulDiv((dwOtherControls == 1) ? 73 : (73 + 15), pData->Context->MixerWindow->baseUnit.cy, 8);
        rect.bottom += dy;

        SetWindowPos(hwndDlg, HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOMOVE | SWP_NOZORDER);


        GetWindowRect(GetDlgItem(hwndDlg, IDOK), &rect);
        MapWindowPoints(HWND_DESKTOP, hwndDlg, (LPPOINT)&rect, 2);

        rect.top += dy;
        rect.bottom += dy;

        SetWindowPos(GetDlgItem(hwndDlg, IDOK), HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOSIZE | SWP_NOZORDER);

        if (dwOtherControls == 2)
        {

            GetWindowRect(GetDlgItem(hwndDlg, IDC_ADV_OTHER_CONTROLS), &rect);
            MapWindowPoints(HWND_DESKTOP, hwndDlg, (LPPOINT)&rect, 2);

            dy = MulDiv(15, pData->Context->MixerWindow->baseUnit.cy, 8);
            rect.bottom += dy;

            SetWindowPos(GetDlgItem(hwndDlg, IDC_ADV_OTHER_CONTROLS), HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOMOVE | SWP_NOZORDER);
        }
    }
}
