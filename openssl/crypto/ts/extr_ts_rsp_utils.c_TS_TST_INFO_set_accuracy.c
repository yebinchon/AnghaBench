
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * accuracy; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int TS_ACCURACY ;


 int ERR_R_MALLOC_FAILURE ;
 int * TS_ACCURACY_dup (int *) ;
 int TS_ACCURACY_free (int *) ;
 int TS_F_TS_TST_INFO_SET_ACCURACY ;
 int TSerr (int ,int ) ;

int TS_TST_INFO_set_accuracy(TS_TST_INFO *a, TS_ACCURACY *accuracy)
{
    TS_ACCURACY *new_accuracy;

    if (a->accuracy == accuracy)
        return 1;
    new_accuracy = TS_ACCURACY_dup(accuracy);
    if (new_accuracy == ((void*)0)) {
        TSerr(TS_F_TS_TST_INFO_SET_ACCURACY, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    TS_ACCURACY_free(a->accuracy);
    a->accuracy = new_accuracy;
    return 1;
}
