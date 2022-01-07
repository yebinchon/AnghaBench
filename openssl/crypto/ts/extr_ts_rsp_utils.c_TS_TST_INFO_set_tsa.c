
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tsa; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int GENERAL_NAME ;


 int ERR_R_MALLOC_FAILURE ;
 int * GENERAL_NAME_dup (int *) ;
 int GENERAL_NAME_free (int *) ;
 int TS_F_TS_TST_INFO_SET_TSA ;
 int TSerr (int ,int ) ;

int TS_TST_INFO_set_tsa(TS_TST_INFO *a, GENERAL_NAME *tsa)
{
    GENERAL_NAME *new_tsa;

    if (a->tsa == tsa)
        return 1;
    new_tsa = GENERAL_NAME_dup(tsa);
    if (new_tsa == ((void*)0)) {
        TSerr(TS_F_TS_TST_INFO_SET_TSA, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    GENERAL_NAME_free(a->tsa);
    a->tsa = new_tsa;
    return 1;
}
