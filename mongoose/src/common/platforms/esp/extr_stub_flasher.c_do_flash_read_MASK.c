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
typedef  int /*<<< orphan*/  num_acked ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct MD5Context*) ; 
 int /*<<< orphan*/  FUNC1 (struct MD5Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct MD5Context*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(uint32_t addr, uint32_t len, uint32_t block_size,
                  uint32_t max_in_flight) {
  uint8_t buf[FLASH_SECTOR_SIZE];
  uint8_t digest[16];
  struct MD5Context ctx;
  uint32_t num_sent = 0, num_acked = 0;
  if (block_size > sizeof(buf)) return 0x52;
  FUNC1(&ctx);
  while (num_acked < len) {
    while (num_sent < len && num_sent - num_acked < max_in_flight) {
      uint32_t n = len - num_sent;
      if (n > block_size) n = block_size;
      if (FUNC4(addr, (uint32_t *) buf, n) != 0) return 0x53;
      FUNC5(buf, n);
      FUNC2(&ctx, buf, n);
      addr += n;
      num_sent += n;
    }
    {
      if (FUNC3(&num_acked, sizeof(num_acked)) != 4) return 0x54;
      if (num_acked > num_sent) return 0x55;
    }
  }
  FUNC0(digest, &ctx);
  FUNC5(digest, sizeof(digest));
  return 0;
}