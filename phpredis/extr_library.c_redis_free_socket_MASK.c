#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ host; scalar_t__ persistent_id; scalar_t__ auth; scalar_t__ err; scalar_t__ pipeline_cmd; scalar_t__ prefix; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(RedisSock *redis_sock)
{
    if (redis_sock->prefix) {
        FUNC1(redis_sock->prefix);
    }
    if (redis_sock->pipeline_cmd) {
        FUNC1(redis_sock->pipeline_cmd);
    }
    if (redis_sock->err) {
        FUNC1(redis_sock->err);
    }
    if (redis_sock->auth) {
        FUNC1(redis_sock->auth);
    }
    if (redis_sock->persistent_id) {
        FUNC1(redis_sock->persistent_id);
    }
    if (redis_sock->host) {
        FUNC1(redis_sock->host);
    }
    FUNC0(redis_sock);
}