#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u32_t ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef  TYPE_1__ spiffs_fd ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ SPIFFS_OK ; 
 scalar_t__ SPIFFS_UNDEFINED_LEN ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static s32_t FUNC4(spiffs *fs, spiffs_fd *fd, void *buf, u32_t offset, s32_t len) {
  (void)fs;
  s32_t res = SPIFFS_OK;
  s32_t remaining = len;
  if (fd->size != SPIFFS_UNDEFINED_LEN && offset < fd->size) {
    s32_t m_len = FUNC0((s32_t)(fd->size - offset), len);
    res = FUNC3(fd, offset, (u8_t *)buf, m_len);
    FUNC1(res);
    remaining -= m_len;
    u8_t *buf_8 = (u8_t *)buf;
    buf_8 += m_len;
    buf = buf_8;
    offset += m_len;
  }
  if (remaining > 0) {
    res = FUNC2(fd, offset, (u8_t *)buf, remaining);
    FUNC1(res);
  }
  return len;

}