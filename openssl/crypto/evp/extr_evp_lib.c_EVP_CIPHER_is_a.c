
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name_id; int * prov; } ;
typedef TYPE_1__ EVP_CIPHER ;


 int EVP_CIPHER_nid (TYPE_1__ const*) ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int evp_is_a (int *,int ,char const*) ;

int EVP_CIPHER_is_a(const EVP_CIPHER *cipher, const char *name)
{

    if (cipher->prov == ((void*)0)) {
        int nid = EVP_CIPHER_nid(cipher);

        return nid == OBJ_sn2nid(name) || nid == OBJ_ln2nid(name);
    }

    return evp_is_a(cipher->prov, cipher->name_id, name);
}
