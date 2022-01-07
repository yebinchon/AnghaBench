
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bias; } ;
typedef TYPE_1__ DateInstance ;
typedef scalar_t__ DOUBLE ;


 int MS_PER_MINUTE ;
 int daylight_saving_ta (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static inline DOUBLE utc(DOUBLE time, DateInstance *date)
{
    time += date->bias * MS_PER_MINUTE;
    return time + daylight_saving_ta(time, date)*MS_PER_MINUTE;
}
