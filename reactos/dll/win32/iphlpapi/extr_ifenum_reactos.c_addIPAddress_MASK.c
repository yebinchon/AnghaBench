#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Information; } ;
struct TYPE_6__ {int /*<<< orphan*/  NewAddress; int /*<<< orphan*/  NewNetmask; int /*<<< orphan*/  NteContext; } ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ IP_SET_DATA ;
typedef  int /*<<< orphan*/  IPMask ;
typedef  int /*<<< orphan*/  IPAddr ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  Data ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FILE_READ_DATA ; 
 int FILE_WRITE_DATA ; 
 int /*<<< orphan*/  IOCTL_SET_IP_ADDRESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

NTSTATUS FUNC6( IPAddr Address, IPMask Mask, DWORD IfIndex,
                       PULONG NteContext, PULONG NteInstance )
{
  HANDLE tcpFile;
  NTSTATUS status = FUNC5( &tcpFile, FILE_READ_DATA | FILE_WRITE_DATA );
  IP_SET_DATA Data;
  IO_STATUS_BLOCK Iosb;

  FUNC3("Called.\n");

  if( !FUNC1(status) ) return status;

  Data.NteContext = IfIndex;
  Data.NewAddress = Address;
  Data.NewNetmask = Mask;

  status = FUNC2( tcpFile,
                                  NULL,
                                  NULL,
                                  NULL,
                                  &Iosb,
                                  IOCTL_SET_IP_ADDRESS,
                                  &Data,
                                  sizeof(Data),
                                  &Data,
                                  sizeof(Data) );

  FUNC4( tcpFile );

  if( FUNC1(status) ) {
      *NteContext = Iosb.Information;
      *NteInstance = Data.NewAddress;
  }

  if (!FUNC1(status)) {
      FUNC0("addIPAddress for if %d returning 0x%lx\n", IfIndex, status);
  }

  return status;

}