
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ bMIDIOutChanged; scalar_t__ bAudioInChanged; scalar_t__ bAudioOutChanged; } ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef int HWND ;


 int IDC_DEVICE_MIDI_LIST ;
 int IDC_DEVICE_PLAY_LIST ;
 int IDC_DEVICE_REC_LIST ;
 int UpdateRegistryString (int ,int ,char*,char*) ;

VOID
SaveAudioDlg(HWND hwnd, PGLOBAL_DATA pGlobalData)
{
    if (pGlobalData->bAudioOutChanged)
    {
        UpdateRegistryString(hwnd,
                             IDC_DEVICE_PLAY_LIST,
                             L"Software\\Microsoft\\Multimedia\\Sound Mapper",
                             L"Playback");
    }

    if (pGlobalData->bAudioInChanged)
    {
        UpdateRegistryString(hwnd,
                             IDC_DEVICE_REC_LIST,
                             L"Software\\Microsoft\\Multimedia\\Sound Mapper",
                             L"Record");
    }

    if (pGlobalData->bMIDIOutChanged)
    {
        UpdateRegistryString(hwnd,
                             IDC_DEVICE_MIDI_LIST,
                             L"Software\\Microsoft\\Windows\\CurrentVersion\\Multimedia\\MIDIMap",
                             L"szPname");
    }
}
