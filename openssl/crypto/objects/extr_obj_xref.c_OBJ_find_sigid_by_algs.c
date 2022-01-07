
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hash_id; int pkey_id; int sign_id; } ;
typedef TYPE_1__ nid_triple ;


 TYPE_1__** OBJ_bsearch_sigx (TYPE_1__ const**,int ,int ) ;
 int OSSL_NELEM (int ) ;
 int sigoid_srt_xref ;
 scalar_t__ sigx_app ;
 int sk_nid_triple_find (scalar_t__,TYPE_1__*) ;
 TYPE_1__* sk_nid_triple_value (scalar_t__,int) ;

int OBJ_find_sigid_by_algs(int *psignid, int dig_nid, int pkey_nid)
{
    nid_triple tmp;
    const nid_triple *t = &tmp;
    const nid_triple **rv = ((void*)0);

    tmp.hash_id = dig_nid;
    tmp.pkey_id = pkey_nid;

    if (sigx_app) {
        int idx = sk_nid_triple_find(sigx_app, &tmp);
        if (idx >= 0) {
            t = sk_nid_triple_value(sigx_app, idx);
            rv = &t;
        }
    }

    if (rv == ((void*)0)) {
        rv = OBJ_bsearch_sigx(&t, sigoid_srt_xref, OSSL_NELEM(sigoid_srt_xref));
    }

    if (rv == ((void*)0))
        return 0;
    if (psignid)
        *psignid = (*rv)->sign_id;
    return 1;
}
