
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int save_parameters; } ;
typedef TYPE_1__ EVP_PKEY ;


 scalar_t__ EVP_PKEY_DSA ;
 scalar_t__ EVP_PKEY_EC ;

int EVP_PKEY_save_parameters(EVP_PKEY *pkey, int mode)
{

    if (pkey->type == EVP_PKEY_DSA) {
        int ret = pkey->save_parameters;

        if (mode >= 0)
            pkey->save_parameters = mode;
        return ret;
    }


    if (pkey->type == EVP_PKEY_EC) {
        int ret = pkey->save_parameters;

        if (mode >= 0)
            pkey->save_parameters = mode;
        return ret;
    }

    return 0;
}
