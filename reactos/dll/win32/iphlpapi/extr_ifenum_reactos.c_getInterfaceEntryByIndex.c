
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int if_info; } ;
struct TYPE_5__ {int * wszName; } ;
typedef TYPE_1__* PMIB_IFROW ;
typedef int NTSTATUS ;
typedef TYPE_2__ IFInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int FILE_READ_DATA ;
 size_t MAX_INTERFACE_NAME_LEN ;
 scalar_t__ NT_SUCCESS (int ) ;
 int TRACE (char*) ;
 int closeTcpFile (int ) ;
 int getInterfaceInfoByIndex (int ,int ,TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int openTcpFile (int *,int ) ;

DWORD getInterfaceEntryByIndex(DWORD index, PMIB_IFROW entry)
{
    HANDLE tcpFile;
    IFInfo info;
    NTSTATUS status = openTcpFile( &tcpFile, FILE_READ_DATA );

    TRACE("Called.\n");

    if( NT_SUCCESS(status) ) {
        status = getInterfaceInfoByIndex( tcpFile, index, &info );

        if( NT_SUCCESS(status) ) {
            memcpy( &entry->wszName[MAX_INTERFACE_NAME_LEN],
                    &info.if_info,
                    sizeof(info.if_info) );
        }

        closeTcpFile( tcpFile );
    }

    return status;
}
