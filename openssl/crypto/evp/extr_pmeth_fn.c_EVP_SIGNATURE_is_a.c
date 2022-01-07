
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; int prov; } ;
typedef TYPE_1__ EVP_SIGNATURE ;


 int evp_is_a (int ,int ,char const*) ;

int EVP_SIGNATURE_is_a(const EVP_SIGNATURE *signature, const char *name)
{
    return evp_is_a(signature->prov, signature->name_id, name);
}
