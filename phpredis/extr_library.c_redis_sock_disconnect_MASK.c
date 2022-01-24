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
struct TYPE_7__ {int /*<<< orphan*/  list; int /*<<< orphan*/  nb_active; } ;
struct TYPE_6__ {scalar_t__ watching; int /*<<< orphan*/  status; int /*<<< orphan*/  mode; int /*<<< orphan*/ * stream; scalar_t__ persistent; } ;
typedef  TYPE_1__ RedisSock ;
typedef  TYPE_2__ ConnectionPool ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC ; 
 int FAILURE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  REDIS_SOCK_STATUS_DISCONNECTED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC5(RedisSock *redis_sock, int force)
{
    if (redis_sock == NULL) {
        return FAILURE;
    } else if (redis_sock->stream) {
        if (redis_sock->persistent) {
            ConnectionPool *p = NULL;
            if (FUNC0("redis.pconnect.pooling_enabled")) {
                p = FUNC3(redis_sock);
            }
            if (force) {
                FUNC2(redis_sock->stream);
                if (p) p->nb_active--;
            } else if (p) {
                FUNC4(&p->list, &redis_sock->stream);
            }
        } else {
            FUNC1(redis_sock->stream);
        }
        redis_sock->stream = NULL;
    }
    redis_sock->mode = ATOMIC;
    redis_sock->status = REDIS_SOCK_STATUS_DISCONNECTED;
    redis_sock->watching = 0;

    return SUCCESS;
}