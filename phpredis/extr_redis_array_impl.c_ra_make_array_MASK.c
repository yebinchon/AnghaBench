#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  void* zend_bool ;
struct TYPE_10__ {int count; double connect_timeout; double read_timeout; struct TYPE_10__* hosts; int /*<<< orphan*/ * continuum; int /*<<< orphan*/ * algorithm; int /*<<< orphan*/  z_dist; int /*<<< orphan*/  z_fun; struct TYPE_10__* prev; struct TYPE_10__* redis; void* pconnect; scalar_t__ auto_rehash; void* index; int /*<<< orphan*/ * z_multi_exec; } ;
typedef  TYPE_1__ RedisArray ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long,void*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

RedisArray *
FUNC11(HashTable *hosts, zval *z_fun, zval *z_dist, HashTable *hosts_prev, zend_bool b_index, zend_bool b_pconnect, long retry_interval, zend_bool b_lazy_connect, double connect_timeout, double read_timeout, zend_bool consistent, zend_string *algorithm, zend_string *auth)
{
    int i, count;
    RedisArray *ra;

    if (!hosts || (count = FUNC7(hosts)) == 0) return NULL;

    /* create object */
    ra = FUNC3(sizeof(RedisArray));
    ra->hosts = FUNC1(count, sizeof(*ra->hosts));
    ra->redis = FUNC1(count, sizeof(*ra->redis));
    ra->count = 0;
    ra->z_multi_exec = NULL;
    ra->index = b_index;
    ra->auto_rehash = 0;
    ra->pconnect = b_pconnect;
    ra->connect_timeout = connect_timeout;
    ra->read_timeout = read_timeout;
    ra->continuum = NULL;
    ra->algorithm = NULL;

    if (FUNC5(ra, hosts, auth, retry_interval, b_lazy_connect) == NULL || !ra->count) {
        for (i = 0; i < ra->count; ++i) {
            FUNC10(&ra->redis[i]);
            FUNC9(ra->hosts[i]);
        }
        FUNC2(ra->redis);
        FUNC2(ra->hosts);
        FUNC2(ra);
        return NULL;
    }
    ra->prev = hosts_prev ? FUNC11(hosts_prev, z_fun, z_dist, NULL, b_index, b_pconnect, retry_interval, b_lazy_connect, connect_timeout, read_timeout, consistent, algorithm, auth) : NULL;

    /* init array data structures */
    FUNC4(ra);

    /* Set hash function and distribtor if provided */
    FUNC0(&ra->z_fun, z_fun, 1, 0);
    FUNC0(&ra->z_dist, z_dist, 1, 0);
    if (algorithm) ra->algorithm = FUNC8(algorithm);

    /* init continuum */
    if (consistent) {
        ra->continuum = FUNC6(ra->hosts, ra->count);
    }

    return ra;
}