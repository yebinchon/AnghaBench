
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int if_descrlen; int if_descr; } ;
struct TYPE_6__ {TYPE_1__ ent; } ;
struct TYPE_7__ {TYPE_2__ if_info; } ;
typedef int NTSTATUS ;
typedef TYPE_3__ IFInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int FILE_READ_DATA ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int closeTcpFile (int ) ;
 int getInterfaceInfoByIndex (int ,int ,TYPE_3__*) ;
 int memcpy (char*,int ,int) ;
 int openTcpFile (int *,int ) ;

const char *getInterfaceNameByIndex(DWORD index)
{
    IFInfo ifInfo;
    HANDLE tcpFile;
    char *interfaceName = ((void*)0);
    NTSTATUS status = openTcpFile( &tcpFile, FILE_READ_DATA );

    if( NT_SUCCESS(status) ) {
        status = getInterfaceInfoByIndex( tcpFile, index, &ifInfo );

        if( NT_SUCCESS(status) ) {
            interfaceName = HeapAlloc( GetProcessHeap(), 0,
                                       ifInfo.if_info.ent.if_descrlen + 1 );
            if( interfaceName ) {
              memcpy(interfaceName, ifInfo.if_info.ent.if_descr, ifInfo.if_info.ent.if_descrlen);
              interfaceName[ifInfo.if_info.ent.if_descrlen] = '\0';
            }
        }

        closeTcpFile( tcpFile );
    }

    return interfaceName;
}
