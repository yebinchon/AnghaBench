
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ hProcess; scalar_t__ hControlPipe; scalar_t__ hToken; int * hProfile; int ImageListEntry; } ;
typedef TYPE_1__* PSERVICE_IMAGE ;


 int CloseHandle (scalar_t__) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int RemoveEntryList (int *) ;
 int ScmEnableBackupRestorePrivileges (int *,int ) ;
 int TRUE ;
 int UnloadUserProfile (int *,int *) ;

VOID
ScmRemoveServiceImage(PSERVICE_IMAGE pServiceImage)
{
    DPRINT1("ScmRemoveServiceImage() called\n");




    RemoveEntryList(&pServiceImage->ImageListEntry);


    if (pServiceImage->hProcess != INVALID_HANDLE_VALUE)
        CloseHandle(pServiceImage->hProcess);


    if (pServiceImage->hControlPipe != INVALID_HANDLE_VALUE)
        CloseHandle(pServiceImage->hControlPipe);


    if (pServiceImage->hProfile != ((void*)0))
    {
        ScmEnableBackupRestorePrivileges(pServiceImage->hToken, TRUE);
        UnloadUserProfile(pServiceImage->hToken, pServiceImage->hProfile);
        ScmEnableBackupRestorePrivileges(pServiceImage->hToken, FALSE);
    }


    if (pServiceImage->hToken != ((void*)0))
        CloseHandle(pServiceImage->hToken);


    HeapFree(GetProcessHeap(), 0, pServiceImage);
}
