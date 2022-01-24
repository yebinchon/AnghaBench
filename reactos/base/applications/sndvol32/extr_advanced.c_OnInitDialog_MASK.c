#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINT ;
struct TYPE_14__ {int dwMaximum; int dwMinimum; } ;
struct TYPE_22__ {int dwControlType; int /*<<< orphan*/  dwControlID; int /*<<< orphan*/  szName; TYPE_1__ Bounds; } ;
struct TYPE_21__ {scalar_t__ fValue; } ;
struct TYPE_20__ {int dwValue; } ;
struct TYPE_19__ {int* dwMaximum; int* dwMinimum; TYPE_4__* Context; int /*<<< orphan*/ * dwControlId; void** bEnabled; } ;
struct TYPE_18__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_17__ {TYPE_3__* MixerWindow; int /*<<< orphan*/  Mixer; int /*<<< orphan*/  Line; int /*<<< orphan*/  LineName; } ;
struct TYPE_15__ {int /*<<< orphan*/  cy; } ;
struct TYPE_16__ {TYPE_2__ baseUnit; } ;
typedef  TYPE_5__ RECT ;
typedef  TYPE_6__* PADVANCED_DATA ;
typedef  TYPE_7__ MIXERCONTROLDETAILS_UNSIGNED ;
typedef  TYPE_8__ MIXERCONTROLDETAILS_BOOLEAN ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  TYPE_9__* LPMIXERCONTROL ;
typedef  int LPARAM ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  HWND_DESKTOP ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int MIXERCONTROL_CONTROLTYPE_BASS ; 
 int MIXERCONTROL_CONTROLTYPE_BOOLEAN ; 
 int MIXERCONTROL_CONTROLTYPE_MUTE ; 
 int MIXERCONTROL_CONTROLTYPE_TREBLE ; 
 int MIXERCONTROL_CT_CLASS_MASK ; 
 int MIXERCONTROL_CT_SUBCLASS_MASK ; 
 int MIXERCONTROL_CT_UNITS_MASK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_SETPAGESIZE ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TBM_SETTIC ; 
 void* TRUE ; 
 int VOLUME_MAX ; 
 int VOLUME_MIN ; 
 scalar_t__ VOLUME_PAGE_SIZE ; 
 int VOLUME_TICKS ; 
 int /*<<< orphan*/  hAppInstance ; 

__attribute__((used)) static
VOID
FUNC17(
    HWND hwndDlg,
    PADVANCED_DATA pData)
{
    MIXERCONTROLDETAILS_UNSIGNED UnsignedDetails;
    MIXERCONTROLDETAILS_BOOLEAN BooleanDetails;
    WCHAR szRawBuffer[256], szCookedBuffer[256];
    LPMIXERCONTROL Control = NULL;
    UINT ControlCount = 0, Index;
    DWORD i, dwStep, dwPosition;
    DWORD dwOtherControls = 0;
    RECT rect;
    LONG dy;

    /* Set the dialog title */
    FUNC6(hAppInstance, IDS_ADVANCED_CONTROLS, szRawBuffer, FUNC0(szRawBuffer));
    FUNC16(szCookedBuffer, FUNC0(szCookedBuffer), szRawBuffer, pData->Context->LineName);
    FUNC12(hwndDlg, szCookedBuffer);

    /* Disable the tone controls */
    for (i = IDC_ADV_BASS_LOW; i<= IDC_ADV_TREBLE_SLIDER; i++)
        FUNC1(FUNC2(hwndDlg, i), FALSE);

    /* Initialize the bass and treble trackbars */
    FUNC10(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)FUNC7(VOLUME_MIN, VOLUME_MAX));
    FUNC10(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)FUNC7(VOLUME_MIN, VOLUME_MAX));
    FUNC10(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPAGESIZE, 0, (LPARAM)VOLUME_PAGE_SIZE);
    FUNC10(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPAGESIZE, 0, (LPARAM)VOLUME_PAGE_SIZE);
    FUNC10(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)0);
    FUNC10(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)0);

    /* Calculate and set ticks */
    dwStep = (VOLUME_MAX / (VOLUME_TICKS + 1));
    if (VOLUME_MAX % (VOLUME_TICKS + 1) != 0)
        dwStep++;
    for (i = dwStep; i < VOLUME_MAX; i += dwStep)
    {
        FUNC10(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETTIC, 0, (LPARAM)i);
        FUNC10(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETTIC, 0, (LPARAM)i);
    }

    /* Hide the other controls */
    for (i = IDC_ADV_OTHER_CONTROLS; i<= IDC_ADV_OTHER_CHECK2; i++)
        FUNC13(FUNC2(hwndDlg, i), SW_HIDE);

    if (FUNC15(pData->Context->Mixer, &ControlCount, pData->Context->Line, &Control))
    {
        for (Index = 0; Index < ControlCount; Index++)
        {
            if (Control[Index].dwControlType == MIXERCONTROL_CONTROLTYPE_BASS)
            {
                /* Bass control */

                if (FUNC14(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_UNSIGNED), (LPVOID)&UnsignedDetails) != -1)
                {
                    for (i = IDC_ADV_BASS_LOW; i<= IDC_ADV_BASS_SLIDER; i++)
                        FUNC1(FUNC2(hwndDlg, i), TRUE);

                    dwStep = (Control[Index].Bounds.dwMaximum - Control[Index].Bounds.dwMinimum) / (VOLUME_MAX - VOLUME_MIN);
                    dwPosition = (UnsignedDetails.dwValue - Control[Index].Bounds.dwMinimum) / dwStep;
                    FUNC10(hwndDlg, IDC_ADV_BASS_SLIDER, TBM_SETPOS, (WPARAM)TRUE, dwPosition);

                    pData->bEnabled[0] = TRUE;
                    pData->dwControlId[0] = Control[Index].dwControlID;
                    pData->dwMaximum[0] = Control[Index].Bounds.dwMaximum;
                    pData->dwMinimum[0] = Control[Index].Bounds.dwMinimum;
                }
            }
            else if (Control[Index].dwControlType == MIXERCONTROL_CONTROLTYPE_TREBLE)
            {
                /* Treble control */

                if (FUNC14(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_UNSIGNED), (LPVOID)&UnsignedDetails) != -1)
                {
                    for (i = IDC_ADV_TREBLE_LOW; i<= IDC_ADV_TREBLE_SLIDER; i++)
                        FUNC1(FUNC2(hwndDlg, i), TRUE);

                    dwStep = (Control[Index].Bounds.dwMaximum - Control[Index].Bounds.dwMinimum) / (VOLUME_MAX - VOLUME_MIN);
                    dwPosition = (UnsignedDetails.dwValue - Control[Index].Bounds.dwMinimum) / dwStep;
                    FUNC10(hwndDlg, IDC_ADV_TREBLE_SLIDER, TBM_SETPOS, (WPARAM)TRUE, dwPosition);

                    pData->bEnabled[1] = TRUE;
                    pData->dwControlId[1] = Control[Index].dwControlID;
                    pData->dwMaximum[1] = Control[Index].Bounds.dwMaximum;
                    pData->dwMinimum[1] = Control[Index].Bounds.dwMinimum;
                }
            }
            else if (((Control[Index].dwControlType & (MIXERCONTROL_CT_CLASS_MASK | MIXERCONTROL_CT_SUBCLASS_MASK | MIXERCONTROL_CT_UNITS_MASK)) == MIXERCONTROL_CONTROLTYPE_BOOLEAN) &&
                     (Control[Index].dwControlType != MIXERCONTROL_CONTROLTYPE_MUTE))
            {
                /* All boolean controls but the Mute control (Maximum of 2) */

                if (dwOtherControls < 2)
                {
                    if (FUNC14(pData->Context->Mixer, Control[Index].dwControlID, 1, sizeof(MIXERCONTROLDETAILS_BOOLEAN), (LPVOID)&BooleanDetails) != -1)
                    {
                        FUNC6(hAppInstance, IDS_OTHER_CONTROLS1 + dwOtherControls, szRawBuffer, FUNC0(szRawBuffer));
                        FUNC16(szCookedBuffer, FUNC0(szCookedBuffer), szRawBuffer, Control[Index].szName);
                        FUNC12(FUNC2(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls), szCookedBuffer);

                        FUNC13(FUNC2(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls), SW_SHOWNORMAL);

                        FUNC10(hwndDlg, IDC_ADV_OTHER_CHECK1 + dwOtherControls, BM_SETCHECK, (WPARAM)BooleanDetails.fValue, 0);

                        pData->bEnabled[dwOtherControls + 2] = TRUE;
                        pData->dwControlId[dwOtherControls + 2] = Control[Index].dwControlID;

                        dwOtherControls++;
                    }
                }
            }
        }

        /* Free controls */
        FUNC5(FUNC3(), 0, Control);
    }

    if (dwOtherControls != 0)
    {
        /* Show the 'Other controls' groupbox and text */
        FUNC13(FUNC2(hwndDlg, IDC_ADV_OTHER_CONTROLS), SW_SHOWNORMAL);
        FUNC13(FUNC2(hwndDlg, IDC_ADV_OTHER_TEXT), SW_SHOWNORMAL);

        /* Resize the dialog */
        FUNC4(hwndDlg, &rect);

        dy = FUNC9((dwOtherControls == 1) ? 73 : (73 + 15), pData->Context->MixerWindow->baseUnit.cy, 8);
        rect.bottom += dy;

        FUNC11(hwndDlg, HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOMOVE | SWP_NOZORDER);

        /* Move the 'Close' button down */
        FUNC4(FUNC2(hwndDlg, IDOK), &rect);
        FUNC8(HWND_DESKTOP, hwndDlg, (LPPOINT)&rect, 2);

        rect.top += dy;
        rect.bottom += dy;

        FUNC11(FUNC2(hwndDlg, IDOK), HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOSIZE | SWP_NOZORDER);

        if (dwOtherControls == 2)
        {
            /* Resize the 'Other Controls' groupbox */
            FUNC4(FUNC2(hwndDlg, IDC_ADV_OTHER_CONTROLS), &rect);
            FUNC8(HWND_DESKTOP, hwndDlg, (LPPOINT)&rect, 2);

            dy = FUNC9(15, pData->Context->MixerWindow->baseUnit.cy, 8);
            rect.bottom += dy;

            FUNC11(FUNC2(hwndDlg, IDC_ADV_OTHER_CONTROLS), HWND_TOP, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, SWP_NOMOVE | SWP_NOZORDER);
        }
    }
}