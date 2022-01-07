
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
typedef int spiffs_file ;
struct TYPE_4__ {int flags; scalar_t__ size; scalar_t__ fdoffset; } ;
typedef TYPE_1__ spiffs_fd ;
typedef int spiffs ;
typedef scalar_t__ s32_t ;


 int SPIFFS_API_CHECK_CFG (int *) ;
 int SPIFFS_API_CHECK_MOUNT (int *) ;
 int SPIFFS_API_CHECK_RES_UNLOCK (int *,scalar_t__) ;
 scalar_t__ SPIFFS_ERR_END_OF_OBJECT ;
 scalar_t__ SPIFFS_ERR_NOT_READABLE ;
 int SPIFFS_FH_UNOFFS (int *,int ) ;
 int SPIFFS_LOCK (int *) ;
 int SPIFFS_O_RDONLY ;
 scalar_t__ SPIFFS_UNDEFINED_LEN ;
 int SPIFFS_UNLOCK (int *) ;
 scalar_t__ spiffs_fd_get (int *,int ,TYPE_1__**) ;
 int spiffs_fflush_cache (int *,int ) ;
 scalar_t__ spiffs_object_read (TYPE_1__*,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static s32_t spiffs_hydro_read(spiffs *fs, spiffs_file fh, void *buf, s32_t len) {
  SPIFFS_API_CHECK_CFG(fs);
  SPIFFS_API_CHECK_MOUNT(fs);
  SPIFFS_LOCK(fs);

  spiffs_fd *fd;
  s32_t res;

  fh = SPIFFS_FH_UNOFFS(fs, fh);
  res = spiffs_fd_get(fs, fh, &fd);
  SPIFFS_API_CHECK_RES_UNLOCK(fs, res);

  if ((fd->flags & SPIFFS_O_RDONLY) == 0) {
    res = SPIFFS_ERR_NOT_READABLE;
    SPIFFS_API_CHECK_RES_UNLOCK(fs, res);
  }

  if (fd->size == SPIFFS_UNDEFINED_LEN && len > 0) {

    res = SPIFFS_ERR_END_OF_OBJECT;
    SPIFFS_API_CHECK_RES_UNLOCK(fs, res);
  }





  if (fd->fdoffset + len >= fd->size) {

    s32_t avail = fd->size - fd->fdoffset;
    if (avail <= 0) {
      SPIFFS_API_CHECK_RES_UNLOCK(fs, SPIFFS_ERR_END_OF_OBJECT);
    }
    res = spiffs_object_read(fd, fd->fdoffset, avail, (u8_t*)buf);
    if (res == SPIFFS_ERR_END_OF_OBJECT) {
      fd->fdoffset += avail;
      SPIFFS_UNLOCK(fs);
      return avail;
    } else {
      SPIFFS_API_CHECK_RES_UNLOCK(fs, res);
      len = avail;
    }
  } else {

    res = spiffs_object_read(fd, fd->fdoffset, len, (u8_t*)buf);
    SPIFFS_API_CHECK_RES_UNLOCK(fs, res);
  }
  fd->fdoffset += len;

  SPIFFS_UNLOCK(fs);

  return len;
}
