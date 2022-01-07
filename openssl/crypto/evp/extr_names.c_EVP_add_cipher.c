
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;
typedef TYPE_1__ EVP_CIPHER ;


 int OBJ_NAME_TYPE_CIPHER_METH ;
 int OBJ_NAME_add (int ,int ,char const*) ;
 int OBJ_nid2ln (int ) ;
 int OBJ_nid2sn (int ) ;

int EVP_add_cipher(const EVP_CIPHER *c)
{
    int r;

    if (c == ((void*)0))
        return 0;

    r = OBJ_NAME_add(OBJ_nid2sn(c->nid), OBJ_NAME_TYPE_CIPHER_METH,
                     (const char *)c);
    if (r == 0)
        return 0;
    r = OBJ_NAME_add(OBJ_nid2ln(c->nid), OBJ_NAME_TYPE_CIPHER_METH,
                     (const char *)c);
    return r;
}
