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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 

void FUNC4(const char *str, uint32_t len) {
    // Only release the GIL if many characters are being sent
    bool release_gil = len > 20;
    if (release_gil) {
        FUNC1();
    }
    for (uint32_t i = 0; i < len; ++i) {
        FUNC3(str[i]);
    }
    if (release_gil) {
        FUNC0();
    }
    FUNC2(str, len);
}