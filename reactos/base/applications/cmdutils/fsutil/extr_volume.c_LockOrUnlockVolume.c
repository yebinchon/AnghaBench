
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ DeviceIoControl (int ,int ,int *,int ,int *,int ,int *,int *) ;
 scalar_t__ FALSE ;
 int FSCTL_LOCK_VOLUME ;
 int FSCTL_UNLOCK_VOLUME ;
 int GetLastError () ;
 int PrintErrorMessage (int ) ;

__attribute__((used)) static int
LockOrUnlockVolume(HANDLE Volume, BOOLEAN Lock)
{
    DWORD Operation;
    ULONG BytesRead;

    Operation = (Lock ? FSCTL_LOCK_VOLUME : FSCTL_UNLOCK_VOLUME);
    if (DeviceIoControl(Volume, Operation, ((void*)0), 0, ((void*)0), 0,
                        &BytesRead, ((void*)0)) == FALSE)
    {
        PrintErrorMessage(GetLastError());
        return 1;
    }

    return 0;
}
