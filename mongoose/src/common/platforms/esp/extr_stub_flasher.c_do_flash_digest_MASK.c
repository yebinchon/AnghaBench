#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct MD5Context {int dummy; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct MD5Context*) ; 
 int /*<<< orphan*/  FUNC1 (struct MD5Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct MD5Context*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(uint32_t addr, uint32_t len, uint32_t digest_block_size) {
  uint8_t buf[FLASH_SECTOR_SIZE];
  uint8_t digest[16];
  uint32_t read_block_size =
      digest_block_size ? digest_block_size : sizeof(buf);
  struct MD5Context ctx;
  if (digest_block_size > sizeof(buf)) return 0x62;
  FUNC1(&ctx);
  while (len > 0) {
    uint32_t n = len;
    struct MD5Context block_ctx;
    FUNC1(&block_ctx);
    if (n > read_block_size) n = read_block_size;
    if (FUNC3(addr, (uint32_t *) buf, n) != 0) return 0x63;
    FUNC2(&ctx, buf, n);
    if (digest_block_size > 0) {
      FUNC2(&block_ctx, buf, n);
      FUNC0(digest, &block_ctx);
      FUNC4(digest, sizeof(digest));
    }
    addr += n;
    len -= n;
  }
  FUNC0(digest, &ctx);
  FUNC4(digest, sizeof(digest));
  return 0;
}