
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int if_descrlen; scalar_t__ if_descr; } ;
struct TYPE_10__ {TYPE_1__ ent; } ;
struct TYPE_11__ {TYPE_2__ if_info; } ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef TYPE_3__ IFInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int getInterfaceInfoSet (int ,TYPE_3__**,int*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int strncmp (int ,char*,int ) ;

NTSTATUS getInterfaceInfoByName( HANDLE tcpFile, char *name, IFInfo *info ) {
    IFInfo *ifInfo;
    DWORD numInterfaces;
    int i;
    NTSTATUS status = getInterfaceInfoSet( tcpFile, &ifInfo, &numInterfaces );

    if( NT_SUCCESS(status) )
    {
        for( i = 0; i < numInterfaces; i++ ) {
            if( !strncmp((PCHAR)ifInfo[i].if_info.ent.if_descr, name, ifInfo[i].if_info.ent.if_descrlen) ) {
                memcpy( info, &ifInfo[i], sizeof(*info) );
                break;
            }
        }

        HeapFree(GetProcessHeap(), 0,ifInfo);

        return i < numInterfaces ? STATUS_SUCCESS : STATUS_UNSUCCESSFUL;
    }

    return status;
}
