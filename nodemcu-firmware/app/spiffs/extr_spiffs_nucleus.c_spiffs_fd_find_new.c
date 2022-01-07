
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8_t ;
typedef size_t u32_t ;
typedef scalar_t__ u16_t ;
struct TYPE_8__ {scalar_t__ file_nbr; int score; size_t name_hash; int objix_hdr_pix; } ;
typedef TYPE_1__ spiffs_fd ;
struct TYPE_9__ {size_t fd_count; scalar_t__ fd_space; int cursor_obj_lu_entry; int cursor_block_ix; } ;
typedef TYPE_2__ spiffs ;
typedef int s32_t ;


 int SPIFFS_BLOCK_FOR_PAGE (TYPE_2__*,int ) ;
 int SPIFFS_ERR_OUT_OF_FILE_DESCS ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE (TYPE_2__*,int ) ;
 int SPIFFS_OK ;
 int SPIFFS_TEMPORAL_CACHE_HIT_SCORE ;
 size_t spiffs_hash (TYPE_2__*,int const*) ;

s32_t spiffs_fd_find_new(spiffs *fs, spiffs_fd **fd, const char *name) {
  (void)name;
  u32_t i;
  spiffs_fd *fds = (spiffs_fd *)fs->fd_space;
  for (i = 0; i < fs->fd_count; i++) {
    spiffs_fd *cur_fd = &fds[i];
    if (cur_fd->file_nbr == 0) {
      cur_fd->file_nbr = i+1;
      *fd = cur_fd;
      return SPIFFS_OK;
    }
  }
  return SPIFFS_ERR_OUT_OF_FILE_DESCS;

}
