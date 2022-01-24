#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  spiffs_file ;
struct TYPE_4__ {int flags; scalar_t__ size; scalar_t__ fdoffset; } ;
typedef  TYPE_1__ spiffs_fd ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ SPIFFS_ERR_END_OF_OBJECT ; 
 scalar_t__ SPIFFS_ERR_NOT_READABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int SPIFFS_O_RDONLY ; 
 scalar_t__ SPIFFS_UNDEFINED_LEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32_t FUNC9(spiffs *fs, spiffs_file fh, void *buf, s32_t len) {
  FUNC0(fs);
  FUNC1(fs);
  FUNC4(fs);

  spiffs_fd *fd;
  s32_t res;

  fh = FUNC3(fs, fh);
  res = FUNC6(fs, fh, &fd);
  FUNC2(fs, res);

  if ((fd->flags & SPIFFS_O_RDONLY) == 0) {
    res = SPIFFS_ERR_NOT_READABLE;
    FUNC2(fs, res);
  }

  if (fd->size == SPIFFS_UNDEFINED_LEN && len > 0) {
    // special case for zero sized files
    res = SPIFFS_ERR_END_OF_OBJECT;
    FUNC2(fs, res);
  }

#if SPIFFS_CACHE_WR
  spiffs_fflush_cache(fs, fh);
#endif

  if (fd->fdoffset + len >= fd->size) {
    // reading beyond file size
    s32_t avail = fd->size - fd->fdoffset;
    if (avail <= 0) {
      FUNC2(fs, SPIFFS_ERR_END_OF_OBJECT);
    }
    res = FUNC8(fd, fd->fdoffset, avail, (u8_t*)buf);
    if (res == SPIFFS_ERR_END_OF_OBJECT) {
      fd->fdoffset += avail;
      FUNC5(fs);
      return avail;
    } else {
      FUNC2(fs, res);
      len = avail;
    }
  } else {
    // reading within file size
    res = FUNC8(fd, fd->fdoffset, len, (u8_t*)buf);
    FUNC2(fs, res);
  }
  fd->fdoffset += len;

  FUNC5(fs);

  return len;
}