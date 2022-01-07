
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbStruct; int paDetails; void* cbDetails; scalar_t__ cMultipleItems; void* cChannels; void* dwControlID; } ;
struct TYPE_5__ {scalar_t__ hmx; } ;
typedef TYPE_1__* PSND_MIXER ;
typedef TYPE_2__ MIXERCONTROLDETAILS ;
typedef int LPVOID ;
typedef int INT ;
typedef int HMIXEROBJ ;
typedef void* DWORD ;


 int MIXER_OBJECTF_HMIXER ;
 int MIXER_SETCONTROLDETAILSF_VALUE ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ mixerSetControlDetails (int ,TYPE_2__*,int) ;

INT
SndMixerSetVolumeControlDetails(PSND_MIXER Mixer, DWORD dwControlID, DWORD cChannels, DWORD cbDetails, LPVOID paDetails)
{
    MIXERCONTROLDETAILS MixerDetails;

    if (Mixer->hmx)
    {
        MixerDetails.cbStruct = sizeof(MIXERCONTROLDETAILS);
        MixerDetails.dwControlID = dwControlID;
        MixerDetails.cChannels = cChannels;
        MixerDetails.cMultipleItems = 0;
        MixerDetails.cbDetails = cbDetails;
        MixerDetails.paDetails = paDetails;

        if (mixerSetControlDetails((HMIXEROBJ)Mixer->hmx, &MixerDetails, MIXER_SETCONTROLDETAILSF_VALUE | MIXER_OBJECTF_HMIXER) == MMSYSERR_NOERROR)
        {
            return 1;
        }
    }

    return -1;
}
