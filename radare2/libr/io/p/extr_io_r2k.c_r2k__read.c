
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int beid; int pid; } ;
struct TYPE_5__ {int (* cb_printf ) (char*) ;int off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int IOCTL_READ_KERNEL_MEMORY ;
 int IOCTL_READ_PHYSICAL_ADDR ;
 int IOCTL_READ_PROCESS_ADDR ;
 int ReadKernelMemory (int ,int *,int) ;
 int ReadMemory (TYPE_1__*,int *,int ,int ,int ,int *,int) ;
 int memset (int *,int,int) ;
 TYPE_2__ r2k_struct ;
 int stub1 (char*) ;
 int stub2 (char*) ;

__attribute__((used)) static int r2k__read(RIO *io, RIODesc *fd, ut8 *buf, int count) {



 switch (r2k_struct.beid) {
 case 0:
  return ReadMemory (io, fd, IOCTL_READ_KERNEL_MEMORY, r2k_struct.pid, io->off, buf, count);
 case 1:
  return ReadMemory (io, fd, IOCTL_READ_PROCESS_ADDR, r2k_struct.pid, io->off, buf, count);
 case 2:
  return ReadMemory (io, fd, IOCTL_READ_PHYSICAL_ADDR, r2k_struct.pid, io->off, buf, count);
 default:
  io->cb_printf ("ERROR: Undefined beid in r2k__read.\n");
  memset (buf, 0xff, count);
  return count;
 }





}
