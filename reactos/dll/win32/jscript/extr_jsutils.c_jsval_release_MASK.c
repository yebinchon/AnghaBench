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
typedef  int /*<<< orphan*/  jsval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  JSV_OBJECT 130 
#define  JSV_STRING 129 
#define  JSV_VARIANT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(jsval_t val)
{
    switch(FUNC7(val)) {
    case JSV_OBJECT:
        if(FUNC2(val))
            FUNC0(FUNC2(val));
        break;
    case JSV_STRING:
        FUNC6(FUNC3(val));
        break;
    case JSV_VARIANT:
        FUNC1(FUNC4(val));
        FUNC5(FUNC4(val));
        break;
    default:
        break;
    }
}