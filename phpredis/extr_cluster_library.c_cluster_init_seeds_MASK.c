#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  seeds; scalar_t__ auth; int /*<<< orphan*/  persistent; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_1__ redisCluster ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_7__ {int port; int /*<<< orphan*/  host; int /*<<< orphan*/  auth; } ;
typedef  TYPE_2__ RedisSock ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC7 (char*,int,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

int
FUNC13(redisCluster *cluster, HashTable *ht_seeds) {
    RedisSock *redis_sock;
    char *str, *psep, key[1024];
    int key_len, count, i;
    zval **z_seeds, *z_seed;

    /* Get our seeds in a randomized array */
    z_seeds = FUNC5(ht_seeds, &count);

    // Iterate our seeds array
    for (i = 0; i < count; i++) {
        if ((z_seed = z_seeds[i]) == NULL) continue;

        FUNC1(z_seed);

        /* Has to be a string */
        if (FUNC3(z_seed) != IS_STRING) continue;

        // Grab a copy of the string
        str = FUNC2(z_seed);

        /* Make sure we have a colon for host:port.  Search right to left in the
         * case of IPv6 */
        if ((psep = FUNC9(str, ':')) == NULL)
            continue;

        // Allocate a structure for this seed
        redis_sock = FUNC7(str, psep-str,
            (unsigned short)FUNC4(psep+1), cluster->timeout,
            cluster->read_timeout, cluster->persistent, NULL, 0);

        // Set auth information if specified
        if (cluster->auth) {
            redis_sock->auth = FUNC12(cluster->auth);
        }

        // Index this seed by host/port
        key_len = FUNC8(key, sizeof(key), "%s:%u", FUNC0(redis_sock->host),
            redis_sock->port);

        // Add to our seed HashTable
        FUNC11(cluster->seeds, key, key_len, redis_sock);
    }

    FUNC6(z_seeds);

    // Success if at least one seed seems valid
    return FUNC10(cluster->seeds) > 0 ? SUCCESS : FAILURE;
}