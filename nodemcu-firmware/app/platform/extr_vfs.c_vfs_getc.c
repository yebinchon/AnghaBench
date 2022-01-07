
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int NODE_DBG (char*,int ) ;
 int VFS_EOF ;
 int vfs_eof (int) ;
 int vfs_ferrno (int) ;
 int vfs_read (int,unsigned char*,int) ;

int vfs_getc( int fd )
{
  unsigned char c = 0xFF;
  int32_t res;

  if(!vfs_eof( fd )) {
    if (1 != vfs_read( fd, &c, 1 )) {
      NODE_DBG("getc errno %i\n", vfs_ferrno( fd ));
      return VFS_EOF;
    } else {
      return (int)c;
    }
  }
  return VFS_EOF;
}
