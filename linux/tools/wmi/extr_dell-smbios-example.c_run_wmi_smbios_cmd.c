
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dell_wmi_smbios_buffer {int dummy; } ;


 int DELL_WMI_SMBIOS_CMD ;
 int O_NONBLOCK ;
 int close (int) ;
 int ioctl (int,int ,struct dell_wmi_smbios_buffer*) ;
 int ioctl_devfs ;
 int open (int ,int ) ;

__attribute__((used)) static int run_wmi_smbios_cmd(struct dell_wmi_smbios_buffer *buffer)
{
 int fd;
 int ret;

 fd = open(ioctl_devfs, O_NONBLOCK);
 ret = ioctl(fd, DELL_WMI_SMBIOS_CMD, buffer);
 close(fd);
 return ret;
}
