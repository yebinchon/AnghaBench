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
 int /*<<< orphan*/  EXPANDER_PAUSE ; 
 int /*<<< orphan*/  EXPANDER_REG_IODIRA ; 
 int /*<<< orphan*/  EXPANDER_REG_IODIRB ; 
 int /*<<< orphan*/  EXPANDER_REG_OLATA ; 
 int /*<<< orphan*/  EXPANDER_REG_OLATB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2() {
    FUNC0(EXPANDER_REG_IODIRA, 0xff);
    FUNC0(EXPANDER_REG_IODIRB, 0xff);
    FUNC0(EXPANDER_REG_OLATA, 0xff);
    FUNC0(EXPANDER_REG_OLATB, 0xff);
    FUNC1(EXPANDER_PAUSE);
}