
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Information; } ;
struct TYPE_6__ {int NewAddress; int NewNetmask; int NteContext; } ;
typedef int * PULONG ;
typedef int NTSTATUS ;
typedef TYPE_1__ IP_SET_DATA ;
typedef int IPMask ;
typedef int IPAddr ;
typedef TYPE_2__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int Data ;
typedef int DWORD ;


 int ERR (char*,int ,int ) ;
 int FILE_READ_DATA ;
 int FILE_WRITE_DATA ;
 int IOCTL_SET_IP_ADDRESS ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,TYPE_2__*,int ,TYPE_1__*,int,TYPE_1__*,int) ;
 int TRACE (char*) ;
 int closeTcpFile (int ) ;
 int openTcpFile (int *,int) ;

NTSTATUS addIPAddress( IPAddr Address, IPMask Mask, DWORD IfIndex,
                       PULONG NteContext, PULONG NteInstance )
{
  HANDLE tcpFile;
  NTSTATUS status = openTcpFile( &tcpFile, FILE_READ_DATA | FILE_WRITE_DATA );
  IP_SET_DATA Data;
  IO_STATUS_BLOCK Iosb;

  TRACE("Called.\n");

  if( !NT_SUCCESS(status) ) return status;

  Data.NteContext = IfIndex;
  Data.NewAddress = Address;
  Data.NewNetmask = Mask;

  status = NtDeviceIoControlFile( tcpFile,
                                  ((void*)0),
                                  ((void*)0),
                                  ((void*)0),
                                  &Iosb,
                                  IOCTL_SET_IP_ADDRESS,
                                  &Data,
                                  sizeof(Data),
                                  &Data,
                                  sizeof(Data) );

  closeTcpFile( tcpFile );

  if( NT_SUCCESS(status) ) {
      *NteContext = Iosb.Information;
      *NteInstance = Data.NewAddress;
  }

  if (!NT_SUCCESS(status)) {
      ERR("addIPAddress for if %d returning 0x%lx\n", IfIndex, status);
  }

  return status;

}
