
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwOperStatus; int dwIndex; } ;
typedef TYPE_1__ MIB_IFROW ;


 int DH_DbgPrint (int ,char*) ;
 scalar_t__ IF_OPER_STATUS_CONNECTED ;
 scalar_t__ IF_OPER_STATUS_OPERATIONAL ;
 int MID_TRACE ;

int
InterfaceConnected(const MIB_IFROW* IfEntry)
{
    if (IfEntry->dwOperStatus == IF_OPER_STATUS_CONNECTED ||
        IfEntry->dwOperStatus == IF_OPER_STATUS_OPERATIONAL)
        return 1;

    DH_DbgPrint(MID_TRACE,("Interface %d is down\n", IfEntry->dwIndex));
    return 0;
}
