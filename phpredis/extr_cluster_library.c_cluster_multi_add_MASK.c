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
struct TYPE_3__ {int /*<<< orphan*/  args; int /*<<< orphan*/  argc; } ;
typedef  TYPE_1__ clusterMultiCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC1(clusterMultiCmd *mc, char *data, int data_len) {
    mc->argc++;
    FUNC0(&(mc->args), data, data_len);
}