
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; int * tsa; int * nonce; scalar_t__ ordering; int * accuracy; int time; int * serial; int msg_imprint; int policy_id; int version; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int BIO ;


 int ASN1_GENERALIZEDTIME_print (int *,int ) ;
 int ASN1_INTEGER_get (int ) ;
 int BIO_printf (int *,char*,...) ;
 int BIO_write (int *,char*,int) ;
 int CONF_VALUE ;
 int STACK_OF (int ) ;
 int TS_ASN1_INTEGER_print_bio (int *,int *) ;
 int TS_MSG_IMPRINT_print_bio (int *,int ) ;
 int TS_OBJ_print_bio (int *,int ) ;
 int TS_ext_print_bio (int *,int ) ;
 int X509V3_EXT_val_prn (int *,int,int ,int ) ;
 int X509V3_conf_free ;
 int i2v_GENERAL_NAME (int *,int *,int *) ;
 int nval ;
 int sk_CONF_VALUE_pop_free (int,int ) ;
 int ts_ACCURACY_print_bio (int *,int *) ;

int TS_TST_INFO_print_bio(BIO *bio, TS_TST_INFO *a)
{
    int v;

    if (a == ((void*)0))
        return 0;

    v = ASN1_INTEGER_get(a->version);
    BIO_printf(bio, "Version: %d\n", v);

    BIO_printf(bio, "Policy OID: ");
    TS_OBJ_print_bio(bio, a->policy_id);

    TS_MSG_IMPRINT_print_bio(bio, a->msg_imprint);

    BIO_printf(bio, "Serial number: ");
    if (a->serial == ((void*)0))
        BIO_printf(bio, "unspecified");
    else
        TS_ASN1_INTEGER_print_bio(bio, a->serial);
    BIO_write(bio, "\n", 1);

    BIO_printf(bio, "Time stamp: ");
    ASN1_GENERALIZEDTIME_print(bio, a->time);
    BIO_write(bio, "\n", 1);

    BIO_printf(bio, "Accuracy: ");
    if (a->accuracy == ((void*)0))
        BIO_printf(bio, "unspecified");
    else
        ts_ACCURACY_print_bio(bio, a->accuracy);
    BIO_write(bio, "\n", 1);

    BIO_printf(bio, "Ordering: %s\n", a->ordering ? "yes" : "no");

    BIO_printf(bio, "Nonce: ");
    if (a->nonce == ((void*)0))
        BIO_printf(bio, "unspecified");
    else
        TS_ASN1_INTEGER_print_bio(bio, a->nonce);
    BIO_write(bio, "\n", 1);

    BIO_printf(bio, "TSA: ");
    if (a->tsa == ((void*)0))
        BIO_printf(bio, "unspecified");
    else {
        STACK_OF(CONF_VALUE) *nval;
        if ((nval = i2v_GENERAL_NAME(((void*)0), a->tsa, ((void*)0))))
            X509V3_EXT_val_prn(bio, nval, 0, 0);
        sk_CONF_VALUE_pop_free(nval, X509V3_conf_free);
    }
    BIO_write(bio, "\n", 1);

    TS_ext_print_bio(bio, a->extensions);

    return 1;
}
