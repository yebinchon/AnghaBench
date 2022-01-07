
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct event_set_return {int dummy; } ;
struct TYPE_2__ {int (* wait ) (struct event_set*,struct timeval const*,struct event_set_return*,int) ;} ;
struct event_set {TYPE_1__ func; } ;


 int PERF_IO_WAIT ;
 int perf_pop () ;
 int perf_push (int ) ;
 int stub1 (struct event_set*,struct timeval const*,struct event_set_return*,int) ;

__attribute__((used)) static inline int
event_wait(struct event_set *es, const struct timeval *tv, struct event_set_return *out, int outlen)
{
    int ret;
    perf_push(PERF_IO_WAIT);
    ret = (*es->func.wait)(es, tv, out, outlen);
    perf_pop();
    return ret;
}
