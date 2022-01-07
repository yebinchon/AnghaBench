
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {scalar_t__ dwImageRunCount; } ;
struct TYPE_6__ {struct TYPE_6__* lpServiceName; int ServiceListEntry; struct TYPE_6__* pSecurityDescriptor; TYPE_3__* lpImage; struct TYPE_6__* lpDisplayName; } ;
typedef TYPE_1__* PSERVICE ;


 int DPRINT (char*,...) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int RemoveEntryList (int *) ;
 int ScmRemoveServiceImage (TYPE_3__*) ;
 int ScmSetServiceGroup (TYPE_1__*,int *) ;

VOID
ScmDeleteServiceRecord(PSERVICE lpService)
{
    DPRINT("Deleting Service %S\n", lpService->lpServiceName);


    if (lpService->lpDisplayName != ((void*)0) &&
        lpService->lpDisplayName != lpService->lpServiceName)
        HeapFree(GetProcessHeap(), 0, lpService->lpDisplayName);


    if (lpService->lpImage)
    {
        lpService->lpImage->dwImageRunCount--;

        if (lpService->lpImage->dwImageRunCount == 0)
        {
            ScmRemoveServiceImage(lpService->lpImage);
            lpService->lpImage = ((void*)0);
        }
    }


    ScmSetServiceGroup(lpService, ((void*)0));


    if (lpService->pSecurityDescriptor != ((void*)0))
        HeapFree(GetProcessHeap(), 0, lpService->pSecurityDescriptor);


    RemoveEntryList(&lpService->ServiceListEntry);

    DPRINT("Deleted Service %S\n", lpService->lpServiceName);


    HeapFree(GetProcessHeap(), 0, lpService);

    DPRINT("Done\n");
}
