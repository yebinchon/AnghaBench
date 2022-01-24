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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t FUNC1(visualizer_user_data_t* user_data) {
    if (FUNC0(user_data, 0) &&
            FUNC0(user_data, 1) &&
            FUNC0(user_data, 2)) {
        return 3;
    }
    return 0;
}