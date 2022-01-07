
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int spiffs_file ;
struct TYPE_4__ {scalar_t__ file_nbr; scalar_t__ ix_map; } ;
typedef TYPE_1__ spiffs_fd ;
struct TYPE_5__ {scalar_t__ fd_space; scalar_t__ fd_count; } ;
typedef TYPE_2__ spiffs ;
typedef int s32_t ;
typedef int s16_t ;


 int SPIFFS_ERR_BAD_DESCRIPTOR ;
 int SPIFFS_ERR_FILE_CLOSED ;
 int SPIFFS_OK ;

s32_t spiffs_fd_return(spiffs *fs, spiffs_file f) {
  if (f <= 0 || f > (s16_t)fs->fd_count) {
    return SPIFFS_ERR_BAD_DESCRIPTOR;
  }
  spiffs_fd *fds = (spiffs_fd *)fs->fd_space;
  spiffs_fd *fd = &fds[f-1];
  if (fd->file_nbr == 0) {
    return SPIFFS_ERR_FILE_CLOSED;
  }
  fd->file_nbr = 0;



  return SPIFFS_OK;
}
