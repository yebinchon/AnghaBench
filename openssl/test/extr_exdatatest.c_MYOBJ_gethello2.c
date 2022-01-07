
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ st; int ex_data; } ;
struct TYPE_6__ {char* hello; } ;
typedef TYPE_1__ MYOBJ_EX_DATA ;
typedef TYPE_2__ MYOBJ ;


 TYPE_1__* CRYPTO_get_ex_data (int *,int ) ;
 scalar_t__ TEST_ptr (TYPE_1__*) ;
 scalar_t__ gbl_result ;
 int saved_idx2 ;

__attribute__((used)) static char *MYOBJ_gethello2(MYOBJ *obj)
{
    MYOBJ_EX_DATA* ex_data = CRYPTO_get_ex_data(&obj->ex_data, saved_idx2);

    if (TEST_ptr(ex_data))
        return ex_data->hello;

    obj->st = gbl_result = 0;
    return ((void*)0);
}
