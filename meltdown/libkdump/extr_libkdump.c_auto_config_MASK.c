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
struct TYPE_2__ {int measurements; int accept_after; int load_threads; int retries; int /*<<< orphan*/  physical_offset; int /*<<< orphan*/  load_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PHYSICAL_OFFSET ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  NOP ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3() {
  FUNC0(INFO, "Auto configuration\n");
  FUNC1();
  FUNC2();
  config.measurements = 3;
  config.accept_after = 1;
  config.load_threads = 1;
  config.load_type = NOP;
  config.retries = 10000;
  config.physical_offset = DEFAULT_PHYSICAL_OFFSET;
}