
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_usb_device {char* path; } ;
typedef int status_attr_path ;
typedef int int32_t ;


 int O_RDONLY ;
 int SYSFS_PATH_MAX ;
 int atoi (char*) ;
 int close (int) ;
 int err (char*,...) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int32_t read_attr_usbip_status(struct usbip_usb_device *udev)
{
 char status_attr_path[SYSFS_PATH_MAX];
 int size;
 int fd;
 int length;
 char status[2] = { 0 };
 int value = 0;

 size = snprintf(status_attr_path, sizeof(status_attr_path),
   "%s/usbip_status", udev->path);
 if (size < 0 || (unsigned int)size >= sizeof(status_attr_path)) {
  err("usbip_status path length %i >= %lu or < 0", size,
      (long unsigned)sizeof(status_attr_path));
  return -1;
 }


 fd = open(status_attr_path, O_RDONLY);
 if (fd < 0) {
  err("error opening attribute %s", status_attr_path);
  return -1;
 }

 length = read(fd, status, 1);
 if (length < 0) {
  err("error reading attribute %s", status_attr_path);
  close(fd);
  return -1;
 }

 value = atoi(status);

 return value;
}
