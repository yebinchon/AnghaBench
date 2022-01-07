
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32_t ;
struct TYPE_7__ {scalar_t__ file_nbr; TYPE_2__* cache_page; } ;
typedef TYPE_1__ spiffs_fd ;
struct TYPE_8__ {scalar_t__ obj_id; int ix; } ;
typedef TYPE_2__ spiffs_cache_page ;
struct TYPE_9__ {size_t fd_count; scalar_t__ fd_space; } ;
typedef TYPE_3__ spiffs ;


 int spiffs_cache_page_free (TYPE_3__*,int ,int ) ;

void spiffs_cache_fd_release(spiffs *fs, spiffs_cache_page *cp) {
  if (cp == 0) return;
  u32_t i;
  spiffs_fd *fds = (spiffs_fd *)fs->fd_space;
  for (i = 0; i < fs->fd_count; i++) {
    spiffs_fd *cur_fd = &fds[i];
    if (cur_fd->file_nbr != 0 && cur_fd->cache_page == cp) {
      cur_fd->cache_page = 0;
    }
  }
  spiffs_cache_page_free(fs, cp->ix, 0);

  cp->obj_id = 0;
}
