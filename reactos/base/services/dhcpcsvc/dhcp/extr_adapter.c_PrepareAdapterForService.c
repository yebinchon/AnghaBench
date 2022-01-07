
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* client; int name; } ;
struct TYPE_9__ {int state; int * config; } ;
struct TYPE_8__ {scalar_t__ bDescr; } ;
struct TYPE_12__ {TYPE_4__ DhclientInfo; TYPE_2__ DhclientState; TYPE_1__ IfMib; int DhclientConfig; } ;
struct TYPE_10__ {int state; } ;
typedef TYPE_5__* PDHCP_ADAPTER ;
typedef int LPBYTE ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int DbgPrint (char*,int ) ;
 int ERROR_SUCCESS ;
 scalar_t__ FindAdapterKey (TYPE_5__*) ;
 int RegQueryValueEx (scalar_t__,char*,int *,int *,int ,int*) ;
 int S_INIT ;
 int S_STATIC ;
 int TRUE ;
 int strncpy (int ,char*,int) ;

BOOL PrepareAdapterForService( PDHCP_ADAPTER Adapter ) {
    HKEY AdapterKey;
    DWORD Error = ERROR_SUCCESS, DhcpEnabled, Length = sizeof(DWORD);

    Adapter->DhclientState.config = &Adapter->DhclientConfig;
    strncpy(Adapter->DhclientInfo.name, (char*)Adapter->IfMib.bDescr,
            sizeof(Adapter->DhclientInfo.name));

    AdapterKey = FindAdapterKey( Adapter );
    if( AdapterKey )
    {
        Error = RegQueryValueEx(AdapterKey, "EnableDHCP", ((void*)0), ((void*)0), (LPBYTE)&DhcpEnabled, &Length);

        if (Error != ERROR_SUCCESS || Length != sizeof(DWORD))
            DhcpEnabled = 1;

        CloseHandle(AdapterKey);
    }
    else
    {

        DhcpEnabled = 1;
    }

    if( !DhcpEnabled ) {

        DbgPrint("DHCPCSVC: Adapter Name: [%s] (static)\n", Adapter->DhclientInfo.name);

        Adapter->DhclientState.state = S_STATIC;
    } else {

        DbgPrint("DHCPCSVC: Adapter Name: [%s] (dynamic)\n", Adapter->DhclientInfo.name);

 Adapter->DhclientInfo.client->state = S_INIT;
    }

    return TRUE;
}
