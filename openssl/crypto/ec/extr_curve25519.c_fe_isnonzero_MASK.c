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
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  fe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC2(const fe f)
{
    uint8_t s[32];
    static const uint8_t zero[32] = {0};

    FUNC1(s, f);

    return FUNC0(s, zero, sizeof(zero)) != 0;
}