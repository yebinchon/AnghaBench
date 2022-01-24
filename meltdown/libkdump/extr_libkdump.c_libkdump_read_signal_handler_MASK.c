#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  MELTDOWN ; 
 int /*<<< orphan*/  buf ; 
 TYPE_1__ config ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ mem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int __attribute__((optimize("-Os"), noinline)) FUNC3() {
  size_t retries = config.retries + 1;
  uint64_t start = 0, end = 0;

  while (retries--) {
    if (!FUNC2(buf)) {
      MELTDOWN;
    }

    int i;
    for (i = 0; i < 256; i++) {
      if (FUNC0(mem + i * 4096)) {
        if (i >= 1) {
          return i;
        }
      }
      FUNC1();
    }
    FUNC1();
  }
  return 0;
}