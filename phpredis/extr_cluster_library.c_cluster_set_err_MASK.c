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
struct TYPE_3__ {int clusterdown; int /*<<< orphan*/ * err; } ;
typedef  TYPE_1__ redisCluster ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(redisCluster *c, char *err, int err_len)
{
    // Free our last error
    if (c->err != NULL) {
        FUNC2(c->err);
        c->err = NULL;
    }
    if (err != NULL && err_len > 0) {
        c->err = FUNC1(err, err_len, 0);
        if (err_len >= sizeof("CLUSTERDOWN") - 1 &&
            !FUNC0(err, "CLUSTERDOWN", sizeof("CLUSTERDOWN") - 1)
        ) {
            c->clusterdown = 1;
        }
    }
}