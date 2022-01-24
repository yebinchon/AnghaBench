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
struct TYPE_2__ {size_t cache_miss_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4() {
  size_t reload_time = 0, flush_reload_time = 0, i, count = 1000000;
  size_t dummy[16];
  size_t *ptr = dummy + 8;
  uint64_t start = 0, end = 0;

  FUNC2(ptr);
  for (i = 0; i < count; i++) {
    start = FUNC3();
    FUNC2(ptr);
    end = FUNC3();
    reload_time += (end - start);
  }
  for (i = 0; i < count; i++) {
    start = FUNC3();
    FUNC2(ptr);
    end = FUNC3();
    FUNC1(ptr);
    flush_reload_time += (end - start);
  }
  reload_time /= count;
  flush_reload_time /= count;

  FUNC0(INFO, "Flush+Reload: %zd cycles, Reload only: %zd cycles\n",
        flush_reload_time, reload_time);
  config.cache_miss_threshold = (flush_reload_time + reload_time * 2) / 3;
  FUNC0(SUCCESS, "Flush+Reload threshold: %zd cycles\n",
        config.cache_miss_threshold);
}