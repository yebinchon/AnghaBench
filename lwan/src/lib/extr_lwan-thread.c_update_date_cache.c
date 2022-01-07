
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_6__ {int expires; int date; } ;
struct lwan_thread {TYPE_3__ date; TYPE_2__* lwan; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ config; } ;


 int lwan_format_rfc_time (scalar_t__,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void update_date_cache(struct lwan_thread *thread)
{
    time_t now = time(((void*)0));

    lwan_format_rfc_time(now, thread->date.date);
    lwan_format_rfc_time(now + (time_t)thread->lwan->config.expires,
                         thread->date.expires);
}
