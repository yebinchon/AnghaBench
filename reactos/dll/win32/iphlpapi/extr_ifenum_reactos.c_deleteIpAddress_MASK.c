#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FILE_READ_DATA ; 
 int FILE_WRITE_DATA ; 
 int /*<<< orphan*/  IOCTL_DELETE_IP_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

NTSTATUS FUNC6( ULONG NteContext )
{
  HANDLE tcpFile;
  NTSTATUS status = FUNC5( &tcpFile, FILE_READ_DATA | FILE_WRITE_DATA );
  IO_STATUS_BLOCK Iosb;

  FUNC3("Called.\n");

  if( !FUNC1(status) ) return status;

  status = FUNC2( tcpFile,
                                  NULL,
                                  NULL,
                                  NULL,
                                  &Iosb,
                                  IOCTL_DELETE_IP_ADDRESS,
                                  &NteContext,
                                  sizeof(USHORT),
                                  NULL,
                                  0 );

  FUNC4( tcpFile );

  if (!FUNC1(status)) {
      FUNC0("deleteIpAddress(%lu) returning 0x%lx\n", NteContext, status);
  }

  return status;
}