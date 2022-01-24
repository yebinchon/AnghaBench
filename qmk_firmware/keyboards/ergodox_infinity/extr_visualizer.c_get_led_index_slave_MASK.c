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
typedef  int /*<<< orphan*/  visualizer_user_data_t ;
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t FUNC2(visualizer_user_data_t* user_data) {
    uint8_t master_index = FUNC0(user_data);
    if (master_index!=0) {
        for (int i=master_index; i < 3; i++) {
            if (FUNC1(user_data, i)) {
                return i + 1;
            }
        }
    }

    return 0;
}