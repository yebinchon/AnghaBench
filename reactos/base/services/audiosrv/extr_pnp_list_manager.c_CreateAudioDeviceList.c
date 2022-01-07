
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; scalar_t__ device_count; int max_size; } ;
typedef int PnP_AudioHeader ;
typedef int DWORD ;
typedef int BOOL ;


 int AUDIO_LIST_NAME ;
 int CloseHandle (int *) ;
 int * CreateFileMappingW (int ,int *,int ,int ,int ,int ) ;
 int FALSE ;
 int FILE_MAP_WRITE ;
 int GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int InitializeAudioDeviceListLock () ;
 int KillAudioDeviceListLock () ;
 int LockAudioDeviceList () ;
 TYPE_1__* MapViewOfFile (int *,int ,int ,int ,int ) ;
 int PAGE_READWRITE ;
 int TRUE ;
 int UnlockAudioDeviceList () ;
 TYPE_1__* audio_device_list ;
 int * device_list_file ;
 int logmsg (char*,...) ;
 int memset (TYPE_1__*,int ,int ) ;

BOOL
CreateAudioDeviceList(DWORD max_size)
{


    if (!InitializeAudioDeviceListLock())
    {

        return FALSE;
    }




    LockAudioDeviceList();

    logmsg("Creating file mapping\n");

    device_list_file = CreateFileMappingW(INVALID_HANDLE_VALUE,
                                          ((void*)0),
                                          PAGE_READWRITE,
                                          0,
                                          max_size,
                                          AUDIO_LIST_NAME);
    if (!device_list_file)
    {
        logmsg("Creation of audio device list failed (err %d)\n", GetLastError());

        UnlockAudioDeviceList();
        KillAudioDeviceListLock();

        return FALSE;
    }

    logmsg("Mapping view of file\n");

    audio_device_list = MapViewOfFile(device_list_file,
                                      FILE_MAP_WRITE,
                                      0,
                                      0,
                                      max_size);
    if (!audio_device_list)
    {
        logmsg("MapViewOfFile FAILED (err %d)\n", GetLastError());

        CloseHandle(device_list_file);
        device_list_file = ((void*)0);

        UnlockAudioDeviceList();
        KillAudioDeviceListLock();

        return FALSE;
    }


    memset(audio_device_list, 0, max_size);


    audio_device_list->size = sizeof(PnP_AudioHeader);
    audio_device_list->max_size = max_size;
    audio_device_list->device_count = 0;

    UnlockAudioDeviceList();

    logmsg("Device list created\n");

    return TRUE;
}
