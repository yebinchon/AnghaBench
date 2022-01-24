#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_13__ {int dwMinimum; int dwMaximum; } ;
struct TYPE_18__ {int /*<<< orphan*/  dwControlID; TYPE_1__ Bounds; } ;
struct TYPE_17__ {int cbStruct; int cChannels; int cbDetails; TYPE_11__* paDetails; scalar_t__ cMultipleItems; int /*<<< orphan*/  dwControlID; } ;
struct TYPE_16__ {int cbStruct; int cChannels; int /*<<< orphan*/  dwLineID; int /*<<< orphan*/  dwComponentType; } ;
struct TYPE_15__ {int cbStruct; int cControls; int cbmxctrl; TYPE_6__* pamxctrl; int /*<<< orphan*/  dwControlType; int /*<<< orphan*/  dwLineID; } ;
struct TYPE_14__ {int volumeChannels; int volumeMinimum; int volumeMaximum; int volumeStep; TYPE_11__* volumeValues; scalar_t__ hMixer; int /*<<< orphan*/  volumeControlID; } ;
struct TYPE_12__ {int dwValue; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PPAGE_DATA ;
typedef  TYPE_3__ MIXERLINECONTROLS ;
typedef  TYPE_4__ MIXERLINE ;
typedef  int /*<<< orphan*/  MIXERCONTROLDETAILS_UNSIGNED ;
typedef  TYPE_5__ MIXERCONTROLDETAILS ;
typedef  TYPE_6__ MIXERCONTROL ;
typedef  int LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMIXEROBJ ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CALLBACK_WINDOW ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_11__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IDS_SPEAKER_LEFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  MIXERCONTROL_CONTROLTYPE_VOLUME ; 
 int /*<<< orphan*/  MIXERLINE_COMPONENTTYPE_DST_SPEAKERS ; 
 int MIXER_GETCONTROLDETAILSF_VALUE ; 
 int MIXER_GETLINECONTROLSF_ONEBYTYPE ; 
 int MIXER_GETLINEINFOF_COMPONENTTYPE ; 
 int MIXER_OBJECTF_HMIXER ; 
 int MIXER_OBJECTF_MIXER ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_SETPAGESIZE ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TBM_SETTICFREQ ; 
 scalar_t__ TRUE ; 
 int VOLUME_MAX ; 
 int VOLUME_MIN ; 
 int VOLUME_PAGESIZE ; 
 int /*<<< orphan*/  VOLUME_TICFREQ ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hApplet ; 
 int FUNC12 (int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 scalar_t__ FUNC16 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
BOOL
FUNC17(
    PPAGE_DATA pPageData,
    HWND hwndDlg)
{
    TCHAR szBuffer[256];
    MIXERLINE mxln;
    MIXERCONTROL mxc;
    MIXERLINECONTROLS mxlctrl;
    MIXERCONTROLDETAILS mxcd;
    INT i, j;

    /* Open the mixer */
    if (FUNC16(&pPageData->hMixer, 0, FUNC6(hwndDlg), 0, MIXER_OBJECTF_MIXER | CALLBACK_WINDOW) != MMSYSERR_NOERROR)
    {
        FUNC5(hwndDlg, FUNC10("Cannot open mixer"), NULL, MB_OK);
        return FALSE;
    }

    /* Retrieve the mixer information */
    mxln.cbStruct = sizeof(MIXERLINE);
    mxln.dwComponentType = MIXERLINE_COMPONENTTYPE_DST_SPEAKERS;

    if (FUNC15((HMIXEROBJ)pPageData->hMixer, &mxln, MIXER_OBJECTF_HMIXER | MIXER_GETLINEINFOF_COMPONENTTYPE) != MMSYSERR_NOERROR)
        return FALSE;

    pPageData->volumeChannels = mxln.cChannels;

    /* Retrieve the line information */
    mxlctrl.cbStruct = sizeof(MIXERLINECONTROLS);
    mxlctrl.dwLineID = mxln.dwLineID;
    mxlctrl.dwControlType = MIXERCONTROL_CONTROLTYPE_VOLUME;
    mxlctrl.cControls = 1;
    mxlctrl.cbmxctrl = sizeof(MIXERCONTROL);
    mxlctrl.pamxctrl = &mxc;

    if (FUNC14((HMIXEROBJ)pPageData->hMixer, &mxlctrl, MIXER_OBJECTF_HMIXER | MIXER_GETLINECONTROLSF_ONEBYTYPE) != MMSYSERR_NOERROR)
        return FALSE;

    pPageData->volumeControlID = mxc.dwControlID;
    pPageData->volumeMinimum = mxc.Bounds.dwMinimum;
    pPageData->volumeMaximum = mxc.Bounds.dwMaximum;
    pPageData->volumeStep = (pPageData->volumeMaximum - pPageData->volumeMinimum) / (VOLUME_MAX - VOLUME_MIN);

    /* Allocate a buffer for all channel volume values */
    pPageData->volumeValues = FUNC2(FUNC1(),
                                        0,
                                        mxln.cChannels * sizeof(MIXERCONTROLDETAILS_UNSIGNED));
    if (pPageData->volumeValues == NULL)
        return FALSE;

    /* Retrieve the channel volume values */
    mxcd.cbStruct = sizeof(MIXERCONTROLDETAILS);
    mxcd.dwControlID = mxc.dwControlID;
    mxcd.cChannels = mxln.cChannels;
    mxcd.cMultipleItems = 0;
    mxcd.cbDetails = sizeof(MIXERCONTROLDETAILS_UNSIGNED);
    mxcd.paDetails = pPageData->volumeValues;

    if (FUNC13((HMIXEROBJ)pPageData->hMixer, &mxcd, MIXER_OBJECTF_HMIXER | MIXER_GETCONTROLDETAILSF_VALUE) != MMSYSERR_NOERROR)
        return FALSE;

    /* Initialize the channels */
    for (i = 0; i < FUNC12(mxln.cChannels, 5); i++)
    {
        j = i * 4;

        /* Set the channel name */
        FUNC3(hApplet, IDS_SPEAKER_LEFT + i, szBuffer, FUNC11(szBuffer));
        FUNC8(FUNC0(hwndDlg, 9472 + j), szBuffer);

        /* Initialize the channel trackbar */
        FUNC7(hwndDlg, 9475 + j, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)FUNC4(VOLUME_MIN, VOLUME_MAX));
        FUNC7(hwndDlg, 9475 + j, TBM_SETTICFREQ, VOLUME_TICFREQ, 0);
        FUNC7(hwndDlg, 9475 + j, TBM_SETPAGESIZE, 0, VOLUME_PAGESIZE);
        FUNC7(hwndDlg, 9475 + j, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)(pPageData->volumeValues[i].dwValue - pPageData->volumeMinimum) / pPageData->volumeStep);
    }

    /* Hide the unused controls */
    for (i = mxln.cChannels; i < 8; i++)
    {
        j = i * 4;
        FUNC9(FUNC0(hwndDlg, 9472 + j), SW_HIDE);
        FUNC9(FUNC0(hwndDlg, 9473 + j), SW_HIDE);
        FUNC9(FUNC0(hwndDlg, 9474 + j), SW_HIDE);
        FUNC9(FUNC0(hwndDlg, 9475 + j), SW_HIDE);
    }

    return TRUE;
}