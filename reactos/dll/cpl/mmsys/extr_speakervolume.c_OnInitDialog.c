
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int WPARAM ;
struct TYPE_13__ {int dwMinimum; int dwMaximum; } ;
struct TYPE_18__ {int dwControlID; TYPE_1__ Bounds; } ;
struct TYPE_17__ {int cbStruct; int cChannels; int cbDetails; TYPE_11__* paDetails; scalar_t__ cMultipleItems; int dwControlID; } ;
struct TYPE_16__ {int cbStruct; int cChannels; int dwLineID; int dwComponentType; } ;
struct TYPE_15__ {int cbStruct; int cControls; int cbmxctrl; TYPE_6__* pamxctrl; int dwControlType; int dwLineID; } ;
struct TYPE_14__ {int volumeChannels; int volumeMinimum; int volumeMaximum; int volumeStep; TYPE_11__* volumeValues; scalar_t__ hMixer; int volumeControlID; } ;
struct TYPE_12__ {int dwValue; } ;
typedef int TCHAR ;
typedef TYPE_2__* PPAGE_DATA ;
typedef TYPE_3__ MIXERLINECONTROLS ;
typedef TYPE_4__ MIXERLINE ;
typedef int MIXERCONTROLDETAILS_UNSIGNED ;
typedef TYPE_5__ MIXERCONTROLDETAILS ;
typedef TYPE_6__ MIXERCONTROL ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int HMIXEROBJ ;
typedef scalar_t__ BOOL ;


 int CALLBACK_WINDOW ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int) ;
 int GetProcessHeap () ;
 TYPE_11__* HeapAlloc (int ,int ,int) ;
 scalar_t__ IDS_SPEAKER_LEFT ;
 int LoadString (int ,scalar_t__,int *,int ) ;
 scalar_t__ MAKELONG (int,int) ;
 int MB_OK ;
 int MIXERCONTROL_CONTROLTYPE_VOLUME ;
 int MIXERLINE_COMPONENTTYPE_DST_SPEAKERS ;
 int MIXER_GETCONTROLDETAILSF_VALUE ;
 int MIXER_GETLINECONTROLSF_ONEBYTYPE ;
 int MIXER_GETLINEINFOF_COMPONENTTYPE ;
 int MIXER_OBJECTF_HMIXER ;
 int MIXER_OBJECTF_MIXER ;
 scalar_t__ MMSYSERR_NOERROR ;
 int MessageBox (int ,int ,int *,int ) ;
 int PtrToUlong (int ) ;
 int SW_HIDE ;
 int SendDlgItemMessage (int ,int,int ,int ,int) ;
 int SetWindowText (int ,int *) ;
 int ShowWindow (int ,int ) ;
 int TBM_SETPAGESIZE ;
 int TBM_SETPOS ;
 int TBM_SETRANGE ;
 int TBM_SETTICFREQ ;
 scalar_t__ TRUE ;
 int VOLUME_MAX ;
 int VOLUME_MIN ;
 int VOLUME_PAGESIZE ;
 int VOLUME_TICFREQ ;
 int _T (char*) ;
 int _countof (int *) ;
 int hApplet ;
 int min (int,int) ;
 scalar_t__ mixerGetControlDetails (int ,TYPE_5__*,int) ;
 scalar_t__ mixerGetLineControls (int ,TYPE_3__*,int) ;
 scalar_t__ mixerGetLineInfo (int ,TYPE_4__*,int) ;
 scalar_t__ mixerOpen (scalar_t__*,int ,int ,int ,int) ;

__attribute__((used)) static
BOOL
OnInitDialog(
    PPAGE_DATA pPageData,
    HWND hwndDlg)
{
    TCHAR szBuffer[256];
    MIXERLINE mxln;
    MIXERCONTROL mxc;
    MIXERLINECONTROLS mxlctrl;
    MIXERCONTROLDETAILS mxcd;
    INT i, j;


    if (mixerOpen(&pPageData->hMixer, 0, PtrToUlong(hwndDlg), 0, MIXER_OBJECTF_MIXER | CALLBACK_WINDOW) != MMSYSERR_NOERROR)
    {
        MessageBox(hwndDlg, _T("Cannot open mixer"), ((void*)0), MB_OK);
        return FALSE;
    }


    mxln.cbStruct = sizeof(MIXERLINE);
    mxln.dwComponentType = MIXERLINE_COMPONENTTYPE_DST_SPEAKERS;

    if (mixerGetLineInfo((HMIXEROBJ)pPageData->hMixer, &mxln, MIXER_OBJECTF_HMIXER | MIXER_GETLINEINFOF_COMPONENTTYPE) != MMSYSERR_NOERROR)
        return FALSE;

    pPageData->volumeChannels = mxln.cChannels;


    mxlctrl.cbStruct = sizeof(MIXERLINECONTROLS);
    mxlctrl.dwLineID = mxln.dwLineID;
    mxlctrl.dwControlType = MIXERCONTROL_CONTROLTYPE_VOLUME;
    mxlctrl.cControls = 1;
    mxlctrl.cbmxctrl = sizeof(MIXERCONTROL);
    mxlctrl.pamxctrl = &mxc;

    if (mixerGetLineControls((HMIXEROBJ)pPageData->hMixer, &mxlctrl, MIXER_OBJECTF_HMIXER | MIXER_GETLINECONTROLSF_ONEBYTYPE) != MMSYSERR_NOERROR)
        return FALSE;

    pPageData->volumeControlID = mxc.dwControlID;
    pPageData->volumeMinimum = mxc.Bounds.dwMinimum;
    pPageData->volumeMaximum = mxc.Bounds.dwMaximum;
    pPageData->volumeStep = (pPageData->volumeMaximum - pPageData->volumeMinimum) / (VOLUME_MAX - VOLUME_MIN);


    pPageData->volumeValues = HeapAlloc(GetProcessHeap(),
                                        0,
                                        mxln.cChannels * sizeof(MIXERCONTROLDETAILS_UNSIGNED));
    if (pPageData->volumeValues == ((void*)0))
        return FALSE;


    mxcd.cbStruct = sizeof(MIXERCONTROLDETAILS);
    mxcd.dwControlID = mxc.dwControlID;
    mxcd.cChannels = mxln.cChannels;
    mxcd.cMultipleItems = 0;
    mxcd.cbDetails = sizeof(MIXERCONTROLDETAILS_UNSIGNED);
    mxcd.paDetails = pPageData->volumeValues;

    if (mixerGetControlDetails((HMIXEROBJ)pPageData->hMixer, &mxcd, MIXER_OBJECTF_HMIXER | MIXER_GETCONTROLDETAILSF_VALUE) != MMSYSERR_NOERROR)
        return FALSE;


    for (i = 0; i < min(mxln.cChannels, 5); i++)
    {
        j = i * 4;


        LoadString(hApplet, IDS_SPEAKER_LEFT + i, szBuffer, _countof(szBuffer));
        SetWindowText(GetDlgItem(hwndDlg, 9472 + j), szBuffer);


        SendDlgItemMessage(hwndDlg, 9475 + j, TBM_SETRANGE, (WPARAM)TRUE, (LPARAM)MAKELONG(VOLUME_MIN, VOLUME_MAX));
        SendDlgItemMessage(hwndDlg, 9475 + j, TBM_SETTICFREQ, VOLUME_TICFREQ, 0);
        SendDlgItemMessage(hwndDlg, 9475 + j, TBM_SETPAGESIZE, 0, VOLUME_PAGESIZE);
        SendDlgItemMessage(hwndDlg, 9475 + j, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)(pPageData->volumeValues[i].dwValue - pPageData->volumeMinimum) / pPageData->volumeStep);
    }


    for (i = mxln.cChannels; i < 8; i++)
    {
        j = i * 4;
        ShowWindow(GetDlgItem(hwndDlg, 9472 + j), SW_HIDE);
        ShowWindow(GetDlgItem(hwndDlg, 9473 + j), SW_HIDE);
        ShowWindow(GetDlgItem(hwndDlg, 9474 + j), SW_HIDE);
        ShowWindow(GetDlgItem(hwndDlg, 9475 + j), SW_HIDE);
    }

    return TRUE;
}
