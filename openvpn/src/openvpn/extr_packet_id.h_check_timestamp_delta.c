
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const time_t ;


 scalar_t__ now ;

__attribute__((used)) static inline bool
check_timestamp_delta(time_t remote, unsigned int max_delta)
{
    unsigned int abs;
    const time_t local_now = now;

    if (local_now >= remote)
    {
        abs = local_now - remote;
    }
    else
    {
        abs = remote - local_now;
    }
    return abs <= max_delta;
}
