
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct grub_disk {TYPE_1__* data; } ;
typedef int const grub_size_t ;
typedef int grub_err_t ;
typedef int const grub_disk_addr_t ;
struct TYPE_3__ {int io; int (* read_at ) (int ,scalar_t__,int *,int const) ;} ;
typedef TYPE_1__ RIOBind ;


 TYPE_1__* bio ;
 scalar_t__ delta ;
 int eprintf (char*) ;
 int stub1 (int ,scalar_t__,int *,int const) ;

__attribute__((used)) static grub_err_t read_foo (struct grub_disk *disk, grub_disk_addr_t sector, grub_size_t size, char *buf) {
 if (!disk) {
  eprintf ("oops. no disk\n");
  return 1;
 }
 const int blocksize = 512;
 RIOBind *iob = disk->data;
 if (bio) {
  iob = bio;
 }

 return !iob->read_at (iob->io, delta+(blocksize*sector), (ut8*)buf, size*blocksize);
}
