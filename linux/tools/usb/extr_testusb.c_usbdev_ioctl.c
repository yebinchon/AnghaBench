
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdevfs_ioctl {int ifno; unsigned int ioctl_code; void* data; } ;


 int USBDEVFS_IOCTL ;
 int ioctl (int,int ,struct usbdevfs_ioctl*) ;

__attribute__((used)) static int
usbdev_ioctl (int fd, int ifno, unsigned request, void *param)
{
 struct usbdevfs_ioctl wrapper;

 wrapper.ifno = ifno;
 wrapper.ioctl_code = request;
 wrapper.data = param;

 return ioctl (fd, USBDEVFS_IOCTL, &wrapper);
}
