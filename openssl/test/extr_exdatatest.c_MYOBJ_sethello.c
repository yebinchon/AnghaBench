
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st; int ex_data; } ;
typedef TYPE_1__ MYOBJ ;


 int CRYPTO_set_ex_data (int *,int ,char*) ;
 int TEST_int_eq (int ,int) ;
 scalar_t__ gbl_result ;
 int saved_idx ;

__attribute__((used)) static void MYOBJ_sethello(MYOBJ *obj, char *cp)
{
    obj->st = CRYPTO_set_ex_data(&obj->ex_data, saved_idx, cp);
    if (!TEST_int_eq(obj->st, 1))
        gbl_result = 0;
}
