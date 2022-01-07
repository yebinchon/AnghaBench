
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ex_data; } ;
typedef TYPE_1__ MYOBJ ;


 int CRYPTO_EX_INDEX_APP ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void MYOBJ_free(MYOBJ *obj)
{
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_APP, obj, &obj->ex_data);
    OPENSSL_free(obj);
}
