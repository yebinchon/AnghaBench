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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fake_rand_bytes ; 
 scalar_t__ fake_rand_bytes_offset ; 
 int /*<<< orphan*/  saved_rand ; 

__attribute__((used)) static int FUNC3(void)
{
    FUNC0(fake_rand_bytes);
    fake_rand_bytes = NULL;
    fake_rand_bytes_offset = 0;
    if (!FUNC2(FUNC1(saved_rand)))
        return 0;
    return 1;
}