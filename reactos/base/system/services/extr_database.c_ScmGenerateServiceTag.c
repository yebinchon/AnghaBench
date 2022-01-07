
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwServiceType; } ;
struct TYPE_5__ {int dwTag; TYPE_1__ Status; } ;
typedef TYPE_2__* PSERVICE ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int SERVICE_WIN32 ;
 int ServiceTag ;

DWORD
ScmGenerateServiceTag(PSERVICE lpServiceRecord)
{

    if (ServiceTag == -1)
    {
        return ERROR_INVALID_DATA;
    }


    if (!(lpServiceRecord->Status.dwServiceType & SERVICE_WIN32))
    {
        return ERROR_INVALID_PARAMETER;
    }


    ServiceTag = ServiceTag % 0xFFFFFFFF + 1;
    lpServiceRecord->dwTag = ServiceTag;

    return ERROR_SUCCESS;
}
