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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  ctx ; 

__attribute__((used)) static int FUNC4(void)
{
    if (!FUNC3(FUNC1(ctx), TLS1_2_VERSION)
        && !FUNC3(FUNC0(ctx), TLS1_2_VERSION)) {
        FUNC2("min/max version setting incorrect");
        return 0;
    }
    return 1;
}