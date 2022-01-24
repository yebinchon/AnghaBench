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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned long long*,int,size_t) ; 

size_t FUNC2(size_t virtual_address) {
  static int pagemap = -1;
  if (pagemap == -1) {
    pagemap = FUNC0("/proc/self/pagemap", O_RDONLY);
    if (pagemap < 0) {
      errno = EPERM;
      return 0;
    }
  }
  uint64_t value;
  int got = FUNC1(pagemap, &value, 8, (virtual_address / 0x1000) * 8);
  if (got != 8) {
    errno = EPERM;
    return 0;
  }
  uint64_t page_frame_number = value & ((1ULL << 54) - 1);
  if (page_frame_number == 0) {
    errno = EPERM;
    return 0;
  }
  return page_frame_number * 0x1000 + virtual_address % 0x1000;
}