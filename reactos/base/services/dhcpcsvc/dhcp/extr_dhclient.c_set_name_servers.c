
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iaddr {int len; int iabuf; } ;
struct client_lease {TYPE_2__* options; } ;
typedef int ULONG ;
struct TYPE_5__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ DhclientInfo; } ;
struct TYPE_6__ {int len; scalar_t__ data; } ;
typedef TYPE_3__* PDHCP_ADAPTER ;
typedef int LPBYTE ;
typedef int IP_ADDRESS_STRING ;
typedef int HKEY ;
typedef char CHAR ;


 size_t DHO_DOMAIN_NAME_SERVERS ;
 int DH_DbgPrint (int ,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 int MID_TRACE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegDeleteValueW (int ,char*) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 int RegSetValueExA (int ,char*,int ,int ,int ,scalar_t__) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (int ,scalar_t__,int) ;
 char* piaddr (struct iaddr) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

void set_name_servers( PDHCP_ADAPTER Adapter, struct client_lease *new_lease ) {
    CHAR Buffer[200] = "SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\\";
    HKEY RegKey;

    strcat(Buffer, Adapter->DhclientInfo.name);
    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, Buffer, 0, KEY_WRITE, &RegKey ) != ERROR_SUCCESS)
        return;


    if( new_lease->options[DHO_DOMAIN_NAME_SERVERS].len ) {

        struct iaddr nameserver;
        char *nsbuf;
        int i, addrs =
            new_lease->options[DHO_DOMAIN_NAME_SERVERS].len / sizeof(ULONG);

        nsbuf = malloc( addrs * sizeof(IP_ADDRESS_STRING) );

        if( nsbuf) {
            nsbuf[0] = 0;
            for( i = 0; i < addrs; i++ ) {
                nameserver.len = sizeof(ULONG);
                memcpy( nameserver.iabuf,
                        new_lease->options[DHO_DOMAIN_NAME_SERVERS].data +
                        (i * sizeof(ULONG)), sizeof(ULONG) );
                strcat( nsbuf, piaddr(nameserver) );
                if( i != addrs-1 ) strcat( nsbuf, "," );
            }

            DH_DbgPrint(MID_TRACE,("Setting DhcpNameserver: %s\n", nsbuf));

            RegSetValueExA( RegKey, "DhcpNameServer", 0, REG_SZ,
                           (LPBYTE)nsbuf, strlen(nsbuf) + 1 );
            free( nsbuf );
        }

    } else {
            RegDeleteValueW( RegKey, L"DhcpNameServer" );
    }

    RegCloseKey( RegKey );

}
