
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int buf ;


 int O_RDONLY ;
 int PATH_MAX ;
 int close (int) ;
 scalar_t__ isspace (char) ;
 int memset (char*,int ,int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static char *sysfs_attr(const char *dev, const char *attr)
{
 int fd, len = 0;
 char path[PATH_MAX];
 static char buf[129];

 memset(buf, 0, sizeof(buf));
 snprintf(path, sizeof(path) - 1, "/sys/bus/usb/devices/%s/%s", dev, attr);

 if ((fd = open(path, O_RDONLY)) >= 0)
 {
  len = read(fd, buf, sizeof(buf) - 1);
  close(fd);
 }

 while (--len > 0 && isspace(buf[len]))
  buf[len] = 0;

 return (len >= 0) ? buf : ((void*)0);
}
