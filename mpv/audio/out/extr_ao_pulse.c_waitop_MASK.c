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
struct priv {int /*<<< orphan*/  mainloop; } ;
typedef  scalar_t__ pa_operation_state_t ;
typedef  int /*<<< orphan*/  pa_operation ;

/* Variables and functions */
 scalar_t__ PA_OPERATION_DONE ; 
 scalar_t__ PA_OPERATION_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct priv *priv, pa_operation *op)
{
    if (!op) {
        FUNC2(priv->mainloop);
        return 0;
    }
    pa_operation_state_t state = FUNC0(op);
    while (state == PA_OPERATION_RUNNING) {
        FUNC3(priv->mainloop);
        state = FUNC0(op);
    }
    FUNC1(op);
    FUNC2(priv->mainloop);
    return state == PA_OPERATION_DONE;
}