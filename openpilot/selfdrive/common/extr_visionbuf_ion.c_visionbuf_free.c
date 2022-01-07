
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ion_handle_data {int handle; } ;
struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ VisionBuf ;


 int ION_IOC_FREE ;
 int assert (int) ;
 int ioctl (int ,int ,struct ion_handle_data*) ;
 int ion_fd ;

void visionbuf_free(const VisionBuf* buf) {
  struct ion_handle_data handle_data = {
    .handle = buf->handle,
  };
  int ret = ioctl(ion_fd, ION_IOC_FREE, &handle_data);
  assert(ret == 0);
}
