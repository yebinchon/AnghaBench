
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDWORD ;
typedef int PBYTE ;
typedef int NTSTATUS ;
typedef int IFInfo ;
typedef int HANDLE ;
typedef int DWORD ;


 int FILE_READ_DATA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int closeTcpFile (int ) ;
 int getInterfaceInfoByName (int ,char*,int *) ;
 int getInterfacePhysicalFromInfo (int *,int ,int ,int ) ;
 int openTcpFile (int *,int ) ;

DWORD getInterfacePhysicalByName(const char *name, PDWORD len, PBYTE addr,
                                 PDWORD type)
{
    HANDLE tcpFile;
    IFInfo info;
    NTSTATUS status = openTcpFile( &tcpFile, FILE_READ_DATA );

    if( NT_SUCCESS(status) ) {
        status = getInterfaceInfoByName( tcpFile, (char *)name, &info );
        if( NT_SUCCESS(status) )
            getInterfacePhysicalFromInfo( &info, len, addr, type );
        closeTcpFile( tcpFile );
    }

    return status;
}
