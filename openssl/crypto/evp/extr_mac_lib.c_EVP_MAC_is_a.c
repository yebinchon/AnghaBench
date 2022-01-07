
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_id; int prov; } ;
typedef TYPE_1__ EVP_MAC ;


 int evp_is_a (int ,int ,char const*) ;

int EVP_MAC_is_a(const EVP_MAC *mac, const char *name)
{
    return evp_is_a(mac->prov, mac->name_id, name);
}
