
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int QuadPart; } ;
struct TYPE_4__ {int len; TYPE_1__ address; } ;
typedef TYPE_2__* PPA ;
typedef int PA ;
typedef int * LPVOID ;
typedef int DWORD ;


 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int,int *,int,int*,int *) ;
 int IOCTL_READ_KERNEL_MEM ;
 int eprintf (char*,...) ;
 int free (int *) ;
 scalar_t__ gHandleDriver ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,float,int) ;

int ReadKernelMemory (ut64 address, ut8 *buf, int len) {
 DWORD ret = -1, bRead = 0;
 LPVOID lpBuffer = ((void*)0);
 int bufsize;
 PPA p;
 memset (buf, '\xff', len);
 if(gHandleDriver) {
  bufsize = sizeof (PA) + len;
  if (!(lpBuffer = malloc (bufsize))) {
   eprintf ("[r2k] ReadKernelMemory: Error can't allocate %i bytes of memory.\n", bufsize);
   return -1;
  }
  p = (PPA)lpBuffer;
  p->address.QuadPart = address;
  p->len = len;
  if (DeviceIoControl (gHandleDriver, IOCTL_READ_KERNEL_MEM, lpBuffer, bufsize, lpBuffer, bufsize, &bRead, ((void*)0))) {
   memcpy (buf, lpBuffer, len);
   ret = len;
  } else {
   ret = -1;

  }
  free (lpBuffer);
 } else {
  eprintf ("Driver not initialized.\n");
 }
 return ret;
}
