
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct iaddr {scalar_t__ iabuf; } ;
struct TYPE_13__ {scalar_t__ iabuf; } ;
struct client_lease {TYPE_3__* options; TYPE_6__ address; } ;
typedef scalar_t__ ULONG ;
struct TYPE_14__ {int dwForwardMetric1; scalar_t__ dwForwardNextHop; int dwForwardIfIndex; scalar_t__ dwForwardMask; scalar_t__ dwForwardDest; } ;
struct TYPE_10__ {int dwIndex; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_12__ {TYPE_7__ RouterMib; TYPE_2__ IfMib; int NteInstance; int NteContext; TYPE_1__ DhclientInfo; } ;
struct TYPE_11__ {int len; int* data; } ;
typedef TYPE_4__* PDHCP_ADAPTER ;
typedef int NTSTATUS ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef int DWORD ;
typedef char CHAR ;


 int AddIPAddress (scalar_t__,scalar_t__,int ,int *,int *) ;
 int CreateIpForwardEntry (TYPE_7__*) ;
 size_t DHO_ROUTERS ;
 size_t DHO_SUBNET_MASK ;
 int DeleteIPAddress (int ) ;
 int DeleteIpForwardEntry (TYPE_7__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 int NT_SUCCESS (int ) ;
 int REG_DWORD ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int **) ;
 int RegSetValueExA (int *,char*,int ,int ,int ,int) ;
 int memcpy (scalar_t__,int*,int) ;
 char* piaddr (TYPE_6__) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int warning (char*,int ) ;

void setup_adapter( PDHCP_ADAPTER Adapter, struct client_lease *new_lease ) {
    CHAR Buffer[200] = "SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\\";
    struct iaddr netmask;
    HKEY hkey;
    int i;
    DWORD dwEnableDHCP;

    strcat(Buffer, Adapter->DhclientInfo.name);
    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, Buffer, 0, KEY_WRITE, &hkey) != ERROR_SUCCESS)
        hkey = ((void*)0);


    if( Adapter->NteContext )
    {
        DeleteIPAddress( Adapter->NteContext );
        Adapter->NteContext = 0;
    }


    if( new_lease->options[DHO_SUBNET_MASK].len ) {
        NTSTATUS Status;

        memcpy( netmask.iabuf,
                new_lease->options[DHO_SUBNET_MASK].data,
                new_lease->options[DHO_SUBNET_MASK].len );
        Status = AddIPAddress
            ( *((ULONG*)new_lease->address.iabuf),
              *((ULONG*)netmask.iabuf),
              Adapter->IfMib.dwIndex,
              &Adapter->NteContext,
              &Adapter->NteInstance );
        if (hkey) {
            RegSetValueExA(hkey, "DhcpIPAddress", 0, REG_SZ, (LPBYTE)piaddr(new_lease->address), strlen(piaddr(new_lease->address))+1);
            Buffer[0] = '\0';
            for(i = 0; i < new_lease->options[DHO_SUBNET_MASK].len; i++)
            {
                sprintf(&Buffer[strlen(Buffer)], "%u", new_lease->options[DHO_SUBNET_MASK].data[i]);
                if (i + 1 < new_lease->options[DHO_SUBNET_MASK].len)
                    strcat(Buffer, ".");
            }
            RegSetValueExA(hkey, "DhcpSubnetMask", 0, REG_SZ, (LPBYTE)Buffer, strlen(Buffer)+1);
            dwEnableDHCP = 1;
            RegSetValueExA(hkey, "EnableDHCP", 0, REG_DWORD, (LPBYTE)&dwEnableDHCP, sizeof(DWORD));
        }

        if( !NT_SUCCESS(Status) )
            warning("AddIPAddress: %lx\n", Status);
    }

    if( new_lease->options[DHO_ROUTERS].len ) {
        NTSTATUS Status;

        Adapter->RouterMib.dwForwardDest = 0;
        Adapter->RouterMib.dwForwardMask = 0;
        Adapter->RouterMib.dwForwardMetric1 = 1;
        Adapter->RouterMib.dwForwardIfIndex = Adapter->IfMib.dwIndex;

        if( Adapter->RouterMib.dwForwardNextHop ) {

            DeleteIpForwardEntry( &Adapter->RouterMib );
        }

        Adapter->RouterMib.dwForwardNextHop =
            *((ULONG*)new_lease->options[DHO_ROUTERS].data);

        Status = CreateIpForwardEntry( &Adapter->RouterMib );

        if( !NT_SUCCESS(Status) )
            warning("CreateIpForwardEntry: %lx\n", Status);

        if (hkey) {
            Buffer[0] = '\0';
            for(i = 0; i < new_lease->options[DHO_ROUTERS].len; i++)
            {
                sprintf(&Buffer[strlen(Buffer)], "%u", new_lease->options[DHO_ROUTERS].data[i]);
                if (i + 1 < new_lease->options[DHO_ROUTERS].len)
                    strcat(Buffer, ".");
            }
            RegSetValueExA(hkey, "DhcpDefaultGateway", 0, REG_SZ, (LPBYTE)Buffer, strlen(Buffer)+1);
        }
    }

    if (hkey)
        RegCloseKey(hkey);
}
