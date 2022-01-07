
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Tag; void* DesiredAccess; } ;
struct TYPE_4__ {TYPE_1__ Handle; } ;
typedef scalar_t__ SC_HANDLE ;
typedef TYPE_2__* PMANAGER_HANDLE ;
typedef void* DWORD ;


 void* ERROR_INVALID_HANDLE ;
 void* ERROR_SUCCESS ;
 scalar_t__ MANAGER_TAG ;
 int RtlMapGenericMask (void**,int *) ;
 scalar_t__ SERVICE_TAG ;
 int ScmManagerMapping ;
 int ScmServiceMapping ;

__attribute__((used)) static DWORD
ScmCheckAccess(SC_HANDLE Handle,
               DWORD dwDesiredAccess)
{
    PMANAGER_HANDLE hMgr;

    hMgr = (PMANAGER_HANDLE)Handle;
    if (hMgr->Handle.Tag == MANAGER_TAG)
    {
        RtlMapGenericMask(&dwDesiredAccess,
                          &ScmManagerMapping);

        hMgr->Handle.DesiredAccess = dwDesiredAccess;

        return ERROR_SUCCESS;
    }
    else if (hMgr->Handle.Tag == SERVICE_TAG)
    {
        RtlMapGenericMask(&dwDesiredAccess,
                          &ScmServiceMapping);

        hMgr->Handle.DesiredAccess = dwDesiredAccess;

        return ERROR_SUCCESS;
    }

    return ERROR_INVALID_HANDLE;
}
