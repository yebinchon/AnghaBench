
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_4__ {int offset; int segment; } ;
struct TYPE_5__ {TYPE_1__ EntryPointSP; } ;
typedef int PXENV_STATUS ;
typedef scalar_t__ PXENV_EXIT ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__* PPXE ;
typedef int BOOLEAN ;


 int ERR (char*,int ,scalar_t__,scalar_t__,...) ;
 int FALSE ;
 TYPE_2__* GetPxeStructure () ;
 int KeStallExecutionProcessor (int) ;
 scalar_t__ PXENV_EXIT_SUCCESS ;
 int PXENV_STATUS_SUCCESS ;
 int PXENV_TFTP_READ ;
 scalar_t__ PxeCallApi (int ,int ,int ,scalar_t__) ;
 int TRACE (char*,int ,scalar_t__) ;
 int TRUE ;

BOOLEAN CallPxe(UINT16 Service, PVOID Parameter)
{
    PPXE pxe;
    PXENV_EXIT exit;

    pxe = GetPxeStructure();
    if (!pxe)
        return FALSE;

    if (Service != PXENV_TFTP_READ)
    {

        KeStallExecutionProcessor(100 * 1000);
        TRACE("PxeCall(0x%x, %p)\n", Service, Parameter);
    }

    exit = PxeCallApi(pxe->EntryPointSP.segment, pxe->EntryPointSP.offset, Service, Parameter);
    if (exit != PXENV_EXIT_SUCCESS)
    {
        ERR("PxeCall(0x%x, %p) failed with exit=%d status=0x%x\n",
                Service, Parameter, exit, *(PXENV_STATUS*)Parameter);
        return FALSE;
    }
    if (*(PXENV_STATUS*)Parameter != PXENV_STATUS_SUCCESS)
    {
        ERR("PxeCall(0x%x, %p) succeeded, but returned error status 0x%x\n",
                Service, Parameter, *(PXENV_STATUS*)Parameter);
        return FALSE;
    }
    return TRUE;
}
