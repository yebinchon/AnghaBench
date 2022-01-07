
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {TYPE_1__ timeval; } ;
struct context {TYPE_2__ c2; } ;



__attribute__((used)) static inline void
context_reschedule_sec(struct context *c, int sec)
{
    if (sec < 0)
    {
        sec = 0;
    }
    if (sec < c->c2.timeval.tv_sec)
    {
        c->c2.timeval.tv_sec = sec;
        c->c2.timeval.tv_usec = 0;
    }
}
