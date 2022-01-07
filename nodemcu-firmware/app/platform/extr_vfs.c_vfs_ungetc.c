
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFS_SEEK_CUR ;
 int vfs_lseek (int,int,int ) ;

int vfs_ungetc( int c, int fd )
{
  return vfs_lseek( fd, -1, VFS_SEEK_CUR );
}
