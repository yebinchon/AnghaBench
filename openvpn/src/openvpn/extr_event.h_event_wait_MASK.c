#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct event_set_return {int dummy; } ;
struct TYPE_2__ {int (* wait ) (struct event_set*,struct timeval const*,struct event_set_return*,int) ;} ;
struct event_set {TYPE_1__ func; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_IO_WAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct event_set*,struct timeval const*,struct event_set_return*,int) ; 

__attribute__((used)) static inline int
FUNC3(struct event_set *es, const struct timeval *tv, struct event_set_return *out, int outlen)
{
    int ret;
    FUNC1(PERF_IO_WAIT);
    ret = (*es->func.wait)(es, tv, out, outlen);
    FUNC0();
    return ret;
}