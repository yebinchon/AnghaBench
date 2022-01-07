
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int ERR (char*,int ,int ) ;
 int FILE_READ_DATA ;
 int FILE_WRITE_DATA ;
 int IOCTL_DELETE_IP_ADDRESS ;
 int NT_SUCCESS (int ) ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,int *,int ,int *,int,int *,int ) ;
 int TRACE (char*) ;
 int closeTcpFile (int ) ;
 int openTcpFile (int *,int) ;

NTSTATUS deleteIpAddress( ULONG NteContext )
{
  HANDLE tcpFile;
  NTSTATUS status = openTcpFile( &tcpFile, FILE_READ_DATA | FILE_WRITE_DATA );
  IO_STATUS_BLOCK Iosb;

  TRACE("Called.\n");

  if( !NT_SUCCESS(status) ) return status;

  status = NtDeviceIoControlFile( tcpFile,
                                  ((void*)0),
                                  ((void*)0),
                                  ((void*)0),
                                  &Iosb,
                                  IOCTL_DELETE_IP_ADDRESS,
                                  &NteContext,
                                  sizeof(USHORT),
                                  ((void*)0),
                                  0 );

  closeTcpFile( tcpFile );

  if (!NT_SUCCESS(status)) {
      ERR("deleteIpAddress(%lu) returning 0x%lx\n", NteContext, status);
  }

  return status;
}
