
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; } ;
typedef TYPE_1__ EVP_CIPHER ;



int EVP_CIPHER_number(const EVP_CIPHER *cipher)
{
    return cipher->name_id;
}
