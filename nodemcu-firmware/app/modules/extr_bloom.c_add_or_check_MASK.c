#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint32 ;
struct TYPE_3__ {int size; int fns; int* buf; int /*<<< orphan*/  occupancy; } ;
typedef  TYPE_1__ bloom_t ;
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,size_t) ; 

__attribute__((used)) static bool FUNC3(const uint8 *buf, size_t len, bloom_t *filter, bool add) {
  SHA256_CTX ctx;
  FUNC1(&ctx);
  FUNC2(&ctx, buf, len);

  char hash[32];
  FUNC0(hash, &ctx);

  int i;
  uint32 bits = filter->size << 5;
  uint8 *h = hash;
  bool prev = true;
  int hstep = filter->fns > 10 ? 2 : 3;
  for (i = 0; i < filter->fns; i++) {
    uint32 val = (((h[0] << 8) + h[1]) << 8) + h[2];
    h += hstep;
    val = val % bits;

    uint32 offset = val >> 5;
    uint32 bit = 1 << (val & 31);

    if (!(filter->buf[offset] & bit)) {
      prev = false;
      if (add) {
        filter->buf[offset] |= bit;
        filter->occupancy++;
      } else {
        break;
      }
    }
  }

  return prev;
}