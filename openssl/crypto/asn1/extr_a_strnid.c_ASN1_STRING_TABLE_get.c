
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nid; } ;
typedef TYPE_1__ ASN1_STRING_TABLE ;


 TYPE_1__* OBJ_bsearch_table (TYPE_1__*,int ,int ) ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,int *) ;
 int OSSL_NELEM (int ) ;
 int sk_ASN1_STRING_TABLE_find (scalar_t__,TYPE_1__*) ;
 TYPE_1__* sk_ASN1_STRING_TABLE_value (scalar_t__,int) ;
 scalar_t__ stable ;
 int tbl_standard ;

ASN1_STRING_TABLE *ASN1_STRING_TABLE_get(int nid)
{
    int idx;
    ASN1_STRING_TABLE fnd;


    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, ((void*)0));

    fnd.nid = nid;
    if (stable) {
        idx = sk_ASN1_STRING_TABLE_find(stable, &fnd);
        if (idx >= 0)
            return sk_ASN1_STRING_TABLE_value(stable, idx);
    }
    return OBJ_bsearch_table(&fnd, tbl_standard, OSSL_NELEM(tbl_standard));
}
