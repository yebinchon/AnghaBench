
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ st; int ex_data; } ;
struct TYPE_8__ {char* hello; } ;
typedef TYPE_1__ MYOBJ_EX_DATA ;
typedef TYPE_2__ MYOBJ ;


 int CRYPTO_EX_INDEX_APP ;
 int CRYPTO_alloc_ex_data (int ,TYPE_2__*,int *,int ) ;
 TYPE_1__* CRYPTO_get_ex_data (int *,int ) ;
 scalar_t__ TEST_ptr (TYPE_1__*) ;
 scalar_t__ TEST_ptr_null (TYPE_1__*) ;
 scalar_t__ TEST_true (int ) ;
 scalar_t__ gbl_result ;
 int saved_idx3 ;

__attribute__((used)) static void MYOBJ_allochello3(MYOBJ *obj, char *cp)
{
    MYOBJ_EX_DATA* ex_data = ((void*)0);

    if (TEST_ptr_null(ex_data = CRYPTO_get_ex_data(&obj->ex_data, saved_idx3))
        && TEST_true(CRYPTO_alloc_ex_data(CRYPTO_EX_INDEX_APP, obj,
                                          &obj->ex_data, saved_idx3))
        && TEST_ptr(ex_data = CRYPTO_get_ex_data(&obj->ex_data, saved_idx3)))
        ex_data->hello = cp;
    else
        obj->st = gbl_result = 0;
}
