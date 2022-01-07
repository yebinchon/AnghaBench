
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_6__ {scalar_t__ senders_disconnected_time; int connected_senders; } ;
typedef TYPE_1__ RRDHOST ;


 int RRDHOST_FLAG_ORPHAN ;
 TYPE_1__* localhost ;
 scalar_t__ rrdhost_flag_check (TYPE_1__*,int ) ;
 scalar_t__ rrdhost_free_orphan_time ;

inline int rrdhost_should_be_removed(RRDHOST *host, RRDHOST *protected, time_t now) {
    if(host != protected
       && host != localhost
       && rrdhost_flag_check(host, RRDHOST_FLAG_ORPHAN)
       && !host->connected_senders
       && host->senders_disconnected_time
       && host->senders_disconnected_time + rrdhost_free_orphan_time < now)
        return 1;

    return 0;
}
