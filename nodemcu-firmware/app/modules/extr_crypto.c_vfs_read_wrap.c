
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sint32_t ;


 int vfs_read (int,void*,size_t) ;

__attribute__((used)) static sint32_t vfs_read_wrap (int fd, void *ptr, size_t len)
{
  return vfs_read (fd, ptr, len);
}
