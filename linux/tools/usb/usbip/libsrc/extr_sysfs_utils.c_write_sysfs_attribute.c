
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 int close (int) ;
 int dbg (char*,char const*) ;
 int open (char const*,int ) ;
 int write (int,char const*,size_t) ;

int write_sysfs_attribute(const char *attr_path, const char *new_value,
     size_t len)
{
 int fd;
 int length;

 fd = open(attr_path, O_WRONLY);
 if (fd < 0) {
  dbg("error opening attribute %s", attr_path);
  return -1;
 }

 length = write(fd, new_value, len);
 if (length < 0) {
  dbg("error writing to attribute %s", attr_path);
  close(fd);
  return -1;
 }

 close(fd);

 return 0;
}
