
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ion_handle_data {unsigned long arg; int handle; int member_0; int cmd; int fd; } ;
struct ion_flush_data {int length; scalar_t__ offset; int vaddr; int handle; int member_0; } ;
struct ion_fd_data {unsigned long arg; int handle; int member_0; int cmd; int fd; } ;
struct ion_custom_data {unsigned long arg; int handle; int member_0; int cmd; int fd; } ;
struct TYPE_3__ {int len; int addr; int fd; } ;
typedef TYPE_1__ VisionBuf ;


 int ION_IOC_CLEAN_CACHES ;
 int ION_IOC_CUSTOM ;
 int ION_IOC_FREE ;
 int ION_IOC_IMPORT ;
 int ION_IOC_INV_CACHES ;


 int assert (int) ;
 int ioctl (int ,int ,struct ion_handle_data*) ;
 int ion_fd ;

void visionbuf_sync(const VisionBuf* buf, int dir) {
  int err;

  struct ion_fd_data fd_data = {0};
  fd_data.fd = buf->fd;
  err = ioctl(ion_fd, ION_IOC_IMPORT, &fd_data);
  assert(err == 0);

  struct ion_flush_data flush_data = {0};
  flush_data.handle = fd_data.handle;
  flush_data.vaddr = buf->addr;
  flush_data.offset = 0;
  flush_data.length = buf->len;





  struct ion_custom_data custom_data = {0};

  switch (dir) {
  case 129:
    custom_data.cmd = ION_IOC_INV_CACHES;
    break;
  case 128:
    custom_data.cmd = ION_IOC_CLEAN_CACHES;
    break;
  default:
    assert(0);
  }

  custom_data.arg = (unsigned long)&flush_data;
  err = ioctl(ion_fd, ION_IOC_CUSTOM, &custom_data);
  assert(err == 0);

  struct ion_handle_data handle_data = {0};
  handle_data.handle = fd_data.handle;
  err = ioctl(ion_fd, ION_IOC_FREE, &handle_data);
  assert(err == 0);
}
