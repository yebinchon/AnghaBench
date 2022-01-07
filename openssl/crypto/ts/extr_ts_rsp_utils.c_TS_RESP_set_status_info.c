
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * status_info; } ;
typedef int TS_STATUS_INFO ;
typedef TYPE_1__ TS_RESP ;


 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_SET_STATUS_INFO ;
 int * TS_STATUS_INFO_dup (int *) ;
 int TS_STATUS_INFO_free (int *) ;
 int TSerr (int ,int ) ;

int TS_RESP_set_status_info(TS_RESP *a, TS_STATUS_INFO *status_info)
{
    TS_STATUS_INFO *new_status_info;

    if (a->status_info == status_info)
        return 1;
    new_status_info = TS_STATUS_INFO_dup(status_info);
    if (new_status_info == ((void*)0)) {
        TSerr(TS_F_TS_RESP_SET_STATUS_INFO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    TS_STATUS_INFO_free(a->status_info);
    a->status_info = new_status_info;

    return 1;
}
