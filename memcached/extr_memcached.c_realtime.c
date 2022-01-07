
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int rel_time_t ;


 scalar_t__ const REALTIME_MAXDELTA ;
 scalar_t__ const current_time ;
 scalar_t__ const process_started ;

__attribute__((used)) static rel_time_t realtime(const time_t exptime) {


    if (exptime == 0) return 0;

    if (exptime > REALTIME_MAXDELTA) {






        if (exptime <= process_started)
            return (rel_time_t)1;
        return (rel_time_t)(exptime - process_started);
    } else {
        return (rel_time_t)(exptime + current_time);
    }
}
