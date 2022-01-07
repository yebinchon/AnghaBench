
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int mdnid; int pknid; int secbits; int flags; } ;
typedef TYPE_1__ X509_SIG_INFO ;
struct TYPE_10__ {int algorithm; } ;
typedef TYPE_2__ X509_ALGOR ;
struct TYPE_11__ {scalar_t__ (* siginf_set ) (TYPE_1__*,TYPE_2__ const*,int const*) ;} ;
typedef TYPE_3__ EVP_PKEY_ASN1_METHOD ;
typedef int EVP_MD ;
typedef int ASN1_STRING ;


 int EVP_MD_size (int const*) ;
 TYPE_3__* EVP_PKEY_asn1_find (int *,int) ;
 int * EVP_get_digestbynid (int) ;




 int NID_undef ;
 int OBJ_find_sigid_algs (int ,int*,int*) ;
 int OBJ_obj2nid (int ) ;
 int X509_SIG_INFO_TLS ;
 int X509_SIG_INFO_VALID ;
 scalar_t__ stub1 (TYPE_1__*,TYPE_2__ const*,int const*) ;

__attribute__((used)) static void x509_sig_info_init(X509_SIG_INFO *siginf, const X509_ALGOR *alg,
                               const ASN1_STRING *sig)
{
    int pknid, mdnid;
    const EVP_MD *md;

    siginf->mdnid = NID_undef;
    siginf->pknid = NID_undef;
    siginf->secbits = -1;
    siginf->flags = 0;
    if (!OBJ_find_sigid_algs(OBJ_obj2nid(alg->algorithm), &mdnid, &pknid)
            || pknid == NID_undef)
        return;
    siginf->pknid = pknid;
    if (mdnid == NID_undef) {

        const EVP_PKEY_ASN1_METHOD *ameth = EVP_PKEY_asn1_find(((void*)0), pknid);
        if (ameth == ((void*)0) || ameth->siginf_set == ((void*)0)
                || ameth->siginf_set(siginf, alg, sig) == 0)
            return;
        siginf->flags |= X509_SIG_INFO_VALID;
        return;
    }
    siginf->flags |= X509_SIG_INFO_VALID;
    siginf->mdnid = mdnid;
    md = EVP_get_digestbynid(mdnid);
    if (md == ((void*)0))
        return;

    siginf->secbits = EVP_MD_size(md) * 4;
    switch (mdnid) {
        case 131:
        case 130:
        case 129:
        case 128:
        siginf->flags |= X509_SIG_INFO_TLS;
    }
}
