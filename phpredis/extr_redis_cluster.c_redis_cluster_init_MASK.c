#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double timeout; double read_timeout; int persistent; long waitms; int /*<<< orphan*/  nodes; int /*<<< orphan*/  auth; } ;
typedef  TYPE_1__ redisCluster ;
typedef  int /*<<< orphan*/  redisCachedCluster ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (double,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(redisCluster *c, HashTable *ht_seeds, double timeout,
                               double read_timeout, int persistent, char *auth,
                               size_t auth_len)
{
    redisCachedCluster *cc;

    FUNC5(timeout, read_timeout, ht_seeds);

    if (auth && auth_len > 0) {
        c->auth = FUNC6(auth, auth_len, 0);
    }

    c->timeout = timeout;
    c->read_timeout = read_timeout;
    c->persistent = persistent;

    /* Calculate the number of miliseconds we will wait when bouncing around,
     * (e.g. a node goes down), which is not the same as a standard timeout. */
    c->waitms = (long)(timeout * 1000);

    /* Attempt to load from cache */
    if ((cc = FUNC0(ht_seeds))) {
        FUNC2(c, cc);
    } else if (FUNC3(c, ht_seeds) == SUCCESS &&
               FUNC4(c) == SUCCESS)
    {
        FUNC1(ht_seeds, c->nodes);
    }
}