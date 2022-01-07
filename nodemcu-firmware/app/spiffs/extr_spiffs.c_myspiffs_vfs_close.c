
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int sint32_t ;


 int GET_FILE_FH (struct vfs_file const*) ;
 int SPIFFS_close (int *,int ) ;
 int fh ;
 int free (void*) ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_close( const struct vfs_file *fd ) {
  GET_FILE_FH(fd);

  sint32_t res = SPIFFS_close( &fs, fh );


  free( (void *)fd );

  return res;
}
