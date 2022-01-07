
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
 int NID_undef ;
 scalar_t__ OBJ_bsearch_nid (int*,int const*,int ) ;
 int OBJ_obj2nid (int ) ;
 int OSSL_NELEM (int const*) ;
 int X509_EXTENSION_get_object (int *) ;

int X509_supported_extension(X509_EXTENSION *ex)
{
    static const int supported_nids[] = {
        134,
        136,
        128,
        141,
        140,
        139,
        138,

        129,
        130,

        133,
        131,
        135,
        132,
        137
    };

    int ex_nid = OBJ_obj2nid(X509_EXTENSION_get_object(ex));

    if (ex_nid == NID_undef)
        return 0;

    if (OBJ_bsearch_nid(&ex_nid, supported_nids, OSSL_NELEM(supported_nids)))
        return 1;
    return 0;
}
