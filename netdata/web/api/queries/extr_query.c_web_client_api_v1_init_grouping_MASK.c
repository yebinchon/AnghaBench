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
struct TYPE_2__ {int /*<<< orphan*/  (* init ) () ;scalar_t__ name; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 TYPE_1__* api_v1_data_groups ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void) {
    int i;

    for(i = 0; api_v1_data_groups[i].name ; i++) {
        api_v1_data_groups[i].hash = FUNC0(api_v1_data_groups[i].name);

        if(api_v1_data_groups[i].init)
            api_v1_data_groups[i].init();
    }
}