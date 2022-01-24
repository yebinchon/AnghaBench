#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int options; scalar_t__ type; } ;
typedef  TYPE_1__ RRDVAR ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int RRDVAR_OPTION_CUSTOM_HOST_VAR ; 
 scalar_t__ RRDVAR_TYPE_CALCULATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void *rrdvar_ptr, void *host_ptr) {
    RRDVAR *rv = (RRDVAR *)rrdvar_ptr;
    RRDHOST *host = (RRDHOST *)host_ptr;

    if(FUNC1(rv->options & RRDVAR_OPTION_CUSTOM_HOST_VAR && rv->type == RRDVAR_TYPE_CALCULATED)) {
        FUNC0(host, rv);

        // return 1, so that the traversal will return the number of variables sent
        return 1;
    }

    // returning a negative number will break the traversal
    return 0;
}