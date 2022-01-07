
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsval_t ;
struct TYPE_5__ {int bias; int time; } ;
typedef int HRESULT ;
typedef TYPE_1__ DateInstance ;
typedef int DOUBLE ;


 int TRUE ;
 int date_to_string (int ,int ,int,int *) ;
 int daylight_saving_ta (int ,TYPE_1__*) ;
 int local_time (int ,TYPE_1__*) ;

__attribute__((used)) static HRESULT dateobj_to_string(DateInstance *date, jsval_t *r)
{
    DOUBLE time;
    int offset;

    time = local_time(date->time, date);
    offset = date->bias +
        daylight_saving_ta(time, date);

    return date_to_string(time, TRUE, offset, r);
}
