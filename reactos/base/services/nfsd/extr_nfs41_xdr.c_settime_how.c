
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ seconds; } ;
typedef TYPE_1__ const nfstime4 ;


 int SET_TO_CLIENT_TIME4 ;
 int SET_TO_SERVER_TIME4 ;
 int get_nfs_time (TYPE_1__ const*) ;
 int nfstime_abs (TYPE_1__ const*,TYPE_1__ const*) ;
 int nfstime_diff (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static uint32_t settime_how(
    nfstime4 *newtime,
    const nfstime4 *time_delta)
{
    nfstime4 current;
    get_nfs_time(&current);

    nfstime_diff(&current, newtime, &current);
    nfstime_abs(&current, &current);

    nfstime_diff(time_delta, &current, &current);

    return current.seconds < 0 ? SET_TO_CLIENT_TIME4 : SET_TO_SERVER_TIME4;
}
