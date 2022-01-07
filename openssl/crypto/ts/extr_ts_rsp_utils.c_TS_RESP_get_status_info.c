
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * status_info; } ;
typedef int TS_STATUS_INFO ;
typedef TYPE_1__ TS_RESP ;



TS_STATUS_INFO *TS_RESP_get_status_info(TS_RESP *a)
{
    return a->status_info;
}
