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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  pin_obj_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpexception_value_invalid_arguments ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int8_t FUNC2 (const pin_obj_t* pin, uint8_t fn, uint8_t unit, uint8_t type) {
    int8_t af = FUNC1(pin, fn, unit, type);
    if (af < 0) {
        FUNC0(mpexception_value_invalid_arguments);
    }
    return af;
}