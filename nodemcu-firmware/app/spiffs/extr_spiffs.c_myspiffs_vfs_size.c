
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfs_file {int dummy; } ;
typedef int int32_t ;


 int GET_FILE_FH (struct vfs_file const*) ;
 int SPIFFS_SEEK_END ;
 int SPIFFS_SEEK_SET ;
 int SPIFFS_lseek (int *,int ,int ,int ) ;
 int SPIFFS_tell (int *,int ) ;
 int fh ;
 int fs ;

__attribute__((used)) static uint32_t myspiffs_vfs_size( const struct vfs_file *fd ) {
  GET_FILE_FH(fd);

  int32_t curpos = SPIFFS_tell( &fs, fh );
  int32_t size = SPIFFS_lseek( &fs, fh, 0, SPIFFS_SEEK_END );
  (void) SPIFFS_lseek( &fs, fh, curpos, SPIFFS_SEEK_SET );

   return size;
}
