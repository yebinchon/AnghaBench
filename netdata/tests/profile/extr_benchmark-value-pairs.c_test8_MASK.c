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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ hash; int /*<<< orphan*/  value; int /*<<< orphan*/ * collected8; scalar_t__ name; } ;

/* Variables and functions */
 TYPE_1__* pairs ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC3() {
    int i;
    for(i = 0; pairs[i].name; i++) {
        uint32_t hash = FUNC0(pairs[i].name);

        int j;
        for(j = 0; pairs[j].name; j++) {
            if(hash == pairs[j].hash && !FUNC1(pairs[i].name, pairs[j].name)) {
                *pairs[j].collected8 = FUNC2(pairs[i].value, NULL, 10);
                break;
            }
        }
    }
}