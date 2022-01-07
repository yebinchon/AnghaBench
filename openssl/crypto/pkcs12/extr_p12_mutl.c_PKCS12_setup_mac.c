
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_8__ {int dinfo; TYPE_1__* salt; int * iter; } ;
struct TYPE_7__ {TYPE_4__* mac; } ;
struct TYPE_6__ {int length; int * data; } ;
typedef TYPE_2__ PKCS12 ;
typedef int EVP_MD ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_MD_type (int const*) ;
 int OBJ_nid2obj (int ) ;
 int * OPENSSL_malloc (int) ;
 int PKCS12_ERROR ;
 int PKCS12_F_PKCS12_SETUP_MAC ;
 int PKCS12_MAC_DATA_free (TYPE_4__*) ;
 TYPE_4__* PKCS12_MAC_DATA_new () ;
 int PKCS12_SALT_LEN ;
 int PKCS12err (int ,int ) ;
 scalar_t__ RAND_bytes (int *,int) ;
 int V_ASN1_NULL ;
 int X509_ALGOR_set0 (int *,int ,int ,int *) ;
 int X509_SIG_getm (int ,int **,int *) ;
 int memcpy (int *,unsigned char*,int) ;

int PKCS12_setup_mac(PKCS12 *p12, int iter, unsigned char *salt, int saltlen,
                     const EVP_MD *md_type)
{
    X509_ALGOR *macalg;

    PKCS12_MAC_DATA_free(p12->mac);
    p12->mac = ((void*)0);

    if ((p12->mac = PKCS12_MAC_DATA_new()) == ((void*)0))
        return PKCS12_ERROR;
    if (iter > 1) {
        if ((p12->mac->iter = ASN1_INTEGER_new()) == ((void*)0)) {
            PKCS12err(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (!ASN1_INTEGER_set(p12->mac->iter, iter)) {
            PKCS12err(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    if (!saltlen)
        saltlen = PKCS12_SALT_LEN;
    if ((p12->mac->salt->data = OPENSSL_malloc(saltlen)) == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p12->mac->salt->length = saltlen;
    if (!salt) {
        if (RAND_bytes(p12->mac->salt->data, saltlen) <= 0)
            return 0;
    } else
        memcpy(p12->mac->salt->data, salt, saltlen);
    X509_SIG_getm(p12->mac->dinfo, &macalg, ((void*)0));
    if (!X509_ALGOR_set0(macalg, OBJ_nid2obj(EVP_MD_type(md_type)),
                         V_ASN1_NULL, ((void*)0))) {
        PKCS12err(PKCS12_F_PKCS12_SETUP_MAC, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
}
