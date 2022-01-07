
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int X509 ;
struct TYPE_9__ {size_t length; unsigned char* data; int type; scalar_t__ flags; } ;
struct TYPE_7__ {TYPE_3__* dNSName; } ;
struct TYPE_8__ {TYPE_1__ d; int type; } ;
typedef int NAME_CONSTRAINTS ;
typedef TYPE_2__ GENERAL_NAME ;
typedef TYPE_3__ ASN1_STRING ;


 int GEN_DNS ;
 int NID_commonName ;
 int OPENSSL_free (unsigned char*) ;
 int V_ASN1_IA5STRING ;
 TYPE_3__* X509_NAME_ENTRY_get_data (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_NID (int *,int ,int) ;
 int X509_V_OK ;
 int * X509_get_subject_name (int *) ;
 int cn2dnsid (TYPE_3__*,unsigned char**,size_t*) ;
 int nc_match (TYPE_2__*,int *) ;

int NAME_CONSTRAINTS_check_CN(X509 *x, NAME_CONSTRAINTS *nc)
{
    int r, i;
    X509_NAME *nm = X509_get_subject_name(x);
    ASN1_STRING stmp;
    GENERAL_NAME gntmp;

    stmp.flags = 0;
    stmp.type = V_ASN1_IA5STRING;
    gntmp.type = GEN_DNS;
    gntmp.d.dNSName = &stmp;



    for (i = -1;;) {
        X509_NAME_ENTRY *ne;
        ASN1_STRING *cn;
        unsigned char *idval;
        size_t idlen;

        i = X509_NAME_get_index_by_NID(nm, NID_commonName, i);
        if (i == -1)
            break;
        ne = X509_NAME_get_entry(nm, i);
        cn = X509_NAME_ENTRY_get_data(ne);


        if ((r = cn2dnsid(cn, &idval, &idlen)) != X509_V_OK)
            return r;
        if (idlen == 0)
            continue;

        stmp.length = idlen;
        stmp.data = idval;
        r = nc_match(&gntmp, nc);
        OPENSSL_free(idval);
        if (r != X509_V_OK)
            return r;
    }
    return X509_V_OK;
}
