
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


 int IOCTL_WRITE_KERNEL_MEMORY ;
 int IOCTL_WRITE_PHYSICAL_ADDR ;
 int IOCTL_WRITE_PROCESS_ADDR ;
 int WriteKernelMemory (int ,int const*,int) ;
 int WriteMemory (TYPE_1__*,int *,int ,int ,int ,int const*,int) ;
 TYPE_2__ r2k_struct ;
 int stub1 (char*) ;
 int stub2 (char*) ;

int r2k__write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {




 switch (r2k_struct.beid) {
 case 0:
  return WriteMemory (io, fd, IOCTL_WRITE_KERNEL_MEMORY, r2k_struct.pid, io->off, buf, count);
 case 1:
  return WriteMemory (io, fd, IOCTL_WRITE_PROCESS_ADDR, r2k_struct.pid, io->off, buf, count);
 case 2:
  return WriteMemory (io, fd, IOCTL_WRITE_PHYSICAL_ADDR, r2k_struct.pid, io->off, buf, count);
 default:
  io->cb_printf ("ERROR: Undefined beid in r2k__write.\n");
  return -1;
 }




}
