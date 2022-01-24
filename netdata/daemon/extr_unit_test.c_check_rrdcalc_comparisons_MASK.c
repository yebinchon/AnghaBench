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
typedef  scalar_t__ RRDCALC_STATUS ;

/* Variables and functions */
 scalar_t__ RRDCALC_STATUS_CLEAR ; 
 scalar_t__ RRDCALC_STATUS_CRITICAL ; 
 scalar_t__ RRDCALC_STATUS_RAISED ; 
 scalar_t__ RRDCALC_STATUS_REMOVED ; 
 scalar_t__ RRDCALC_STATUS_UNDEFINED ; 
 scalar_t__ RRDCALC_STATUS_UNINITIALIZED ; 
 scalar_t__ RRDCALC_STATUS_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(void) {
    RRDCALC_STATUS a, b;

    // make sure calloc() sets the status to UNINITIALIZED
    FUNC1(&a, 0, sizeof(RRDCALC_STATUS));
    if(a != RRDCALC_STATUS_UNINITIALIZED) {
        FUNC0(stderr, "%s is not zero.\n", FUNC2(RRDCALC_STATUS_UNINITIALIZED));
        return 1;
    }

    a = RRDCALC_STATUS_REMOVED;
    b = RRDCALC_STATUS_UNDEFINED;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    a = RRDCALC_STATUS_UNDEFINED;
    b = RRDCALC_STATUS_UNINITIALIZED;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    a = RRDCALC_STATUS_UNINITIALIZED;
    b = RRDCALC_STATUS_CLEAR;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    a = RRDCALC_STATUS_CLEAR;
    b = RRDCALC_STATUS_RAISED;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    a = RRDCALC_STATUS_RAISED;
    b = RRDCALC_STATUS_WARNING;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    a = RRDCALC_STATUS_WARNING;
    b = RRDCALC_STATUS_CRITICAL;
    if(!(a < b)) {
        FUNC0(stderr, "%s is not less than %s\n", FUNC2(a), FUNC2(b));
        return 1;
    }

    FUNC0(stderr, "RRDCALC_STATUSes are sortable.\n");

    return 0;
}