
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_10__ {int cbStruct; size_t cChannels; int cbDetails; TYPE_2__* paDetails; int cMultipleItems; int dwControlID; } ;
struct TYPE_9__ {size_t volumeMinimum; size_t volumeMaximum; size_t volumeStep; size_t volumeChannels; size_t maxVolume; int hMixer; TYPE_2__* volumeCurrentValues; int volumeControlID; TYPE_1__* volumeInitValues; } ;
struct TYPE_8__ {size_t dwValue; } ;
struct TYPE_7__ {size_t dwValue; } ;
typedef TYPE_3__* PDIALOG_DATA ;
typedef int MIXERCONTROLDETAILS_UNSIGNED ;
typedef TYPE_4__ MIXERCONTROLDETAILS ;
typedef int LPCTSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HMIXEROBJ ;
typedef size_t DWORD ;


 int IDC_LINE_SLIDER_VERT ;
 int LOWORD (int ) ;
 int MIXER_OBJECTF_HMIXER ;
 int MIXER_SETCONTROLDETAILSF_VALUE ;
 int PlaySound (int ,int *,int) ;
 int SND_ALIAS_ID ;
 int SND_ALIAS_SYSTEMDEFAULT ;
 int SND_ASYNC ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int TBM_GETPOS ;


 size_t VOLUME_MAX ;
 size_t VOLUME_MIN ;
 int mixerSetControlDetails (int ,TYPE_4__*,int) ;

__attribute__((used)) static
VOID
OnVScroll(
    PDIALOG_DATA pDialogData,
    HWND hwndDlg,
    WPARAM wParam,
    LPARAM lParam)
{
    MIXERCONTROLDETAILS mxcd;
    DWORD dwPosition, dwVolume, i;

    switch (LOWORD(wParam))
    {
        case 128:
            break;

        case 129:
            PlaySound((LPCTSTR)SND_ALIAS_SYSTEMDEFAULT, ((void*)0), SND_ASYNC | SND_ALIAS_ID);
            break;

        default:
            dwPosition = VOLUME_MAX - (DWORD)SendDlgItemMessage(hwndDlg, IDC_LINE_SLIDER_VERT, TBM_GETPOS, 0, 0);

            if (dwPosition == VOLUME_MIN)
                dwVolume = pDialogData->volumeMinimum;
            else if (dwPosition == VOLUME_MAX)
                dwVolume = pDialogData->volumeMaximum;
            else
                dwVolume = (dwPosition * pDialogData->volumeStep) + pDialogData->volumeMinimum;

            for (i = 0; i < pDialogData->volumeChannels; i++)
            {
                if (pDialogData->volumeInitValues[i].dwValue == pDialogData->maxVolume)
                {
                    pDialogData->volumeCurrentValues[i].dwValue = dwVolume;
                }
                else
                {
                    pDialogData->volumeCurrentValues[i].dwValue =
                        pDialogData->volumeInitValues[i].dwValue * dwVolume / pDialogData-> maxVolume;
                }
            }

            mxcd.cbStruct = sizeof(MIXERCONTROLDETAILS);
            mxcd.dwControlID = pDialogData->volumeControlID;
            mxcd.cChannels = pDialogData->volumeChannels;
            mxcd.cMultipleItems = 0;
            mxcd.cbDetails = sizeof(MIXERCONTROLDETAILS_UNSIGNED);
            mxcd.paDetails = pDialogData->volumeCurrentValues;

            mixerSetControlDetails((HMIXEROBJ)pDialogData->hMixer,
                                   &mxcd,
                                   MIXER_OBJECTF_HMIXER | MIXER_SETCONTROLDETAILSF_VALUE);
            break;
    }
}
