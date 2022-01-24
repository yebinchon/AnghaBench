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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ cache_miss_threshold; } ;

/* Variables and functions */
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int __attribute__((always_inline)) FUNC3(void *ptr) {
  uint64_t start = 0, end = 0;

  start = FUNC2();
  FUNC1(ptr);
  end = FUNC2();

  FUNC0(ptr);

  if (end - start < config.cache_miss_threshold) {
    return 1;
  }
  return 0;
}