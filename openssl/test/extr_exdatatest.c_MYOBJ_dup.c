
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ex_data; int st; } ;
typedef TYPE_1__ MYOBJ ;


 int CRYPTO_EX_INDEX_APP ;
 int CRYPTO_dup_ex_data (int ,int *,int *) ;
 TYPE_1__* MYOBJ_new () ;

__attribute__((used)) static MYOBJ *MYOBJ_dup(MYOBJ *in)
{
    MYOBJ *obj = MYOBJ_new();

    obj->st |= CRYPTO_dup_ex_data(CRYPTO_EX_INDEX_APP, &obj->ex_data,
                                 &in->ex_data);
    return obj;
}
