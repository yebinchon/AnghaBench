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
struct TYPE_2__ {int /*<<< orphan*/ * log_fp; int /*<<< orphan*/  log_filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ registry ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void) {
    if(registry.log_fp != NULL) {
        FUNC3();

        // open it with truncate
        registry.log_fp = FUNC2(registry.log_filename, "w");
        if(registry.log_fp) FUNC1(registry.log_fp);
        else FUNC0("Cannot truncate registry log '%s'", registry.log_filename);

        registry.log_fp = NULL;
        FUNC4();
    }
}