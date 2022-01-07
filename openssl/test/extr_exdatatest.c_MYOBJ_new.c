
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int ex_data; int st; } ;
typedef TYPE_1__ MYOBJ ;


 int CRYPTO_EX_INDEX_APP ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 TYPE_1__* OPENSSL_malloc (int) ;

__attribute__((used)) static MYOBJ *MYOBJ_new(void)
{
    static int count = 0;
    MYOBJ *obj = OPENSSL_malloc(sizeof(*obj));

    obj->id = ++count;
    obj->st = CRYPTO_new_ex_data(CRYPTO_EX_INDEX_APP, obj, &obj->ex_data);
    return obj;
}
