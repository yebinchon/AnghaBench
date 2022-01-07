
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int if_operstatus; int if_mtu; } ;
struct TYPE_8__ {TYPE_2__ ent; } ;
struct TYPE_6__ {int iae_mask; int iae_bcastaddr; int iae_addr; } ;
struct TYPE_9__ {TYPE_3__ if_info; TYPE_1__ ip_addr; } ;
typedef int NTSTATUS ;
typedef int IPHLPAddrType ;
typedef TYPE_4__ IFInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int FILE_READ_DATA ;


 int INADDR_ANY ;



 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int closeTcpFile (int ) ;
 int getIPAddrEntryForIf (int ,char*,int ,TYPE_4__*) ;
 int openTcpFile (int *,int ) ;

DWORD getAddrByIndexOrName( char *name, DWORD index, IPHLPAddrType addrType ) {
    IFInfo ifInfo;
    HANDLE tcpFile;
    NTSTATUS status = STATUS_SUCCESS;
    DWORD addrOut = INADDR_ANY;

    status = openTcpFile( &tcpFile, FILE_READ_DATA );

    if( NT_SUCCESS(status) ) {
        status = getIPAddrEntryForIf( tcpFile, name, index, &ifInfo );
        if( NT_SUCCESS(status) ) {
            switch( addrType ) {
            case 130: addrOut = ifInfo.ip_addr.iae_addr; break;
            case 129: addrOut = ifInfo.ip_addr.iae_bcastaddr; break;
            case 128: addrOut = ifInfo.ip_addr.iae_mask; break;
            case 132: addrOut = ifInfo.if_info.ent.if_mtu; break;
            case 131: addrOut = ifInfo.if_info.ent.if_operstatus; break;
            }
        }
        closeTcpFile( tcpFile );
    }

    return addrOut;
}
