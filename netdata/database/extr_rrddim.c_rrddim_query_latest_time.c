
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int rrdset; } ;
typedef TYPE_1__ RRDDIM ;


 int rrdset_last_entry_t (int ) ;

__attribute__((used)) static time_t rrddim_query_latest_time(RRDDIM *rd) {
    return rrdset_last_entry_t(rd->rrdset);
}
