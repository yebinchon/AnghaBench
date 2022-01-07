
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int int32_t ;


 int last_result ;

__attribute__((used)) static int32_t myfatfs_ferrno( const struct vfs_file *fd )
{
  return -last_result;
}
