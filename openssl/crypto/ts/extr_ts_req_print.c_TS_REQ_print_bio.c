
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int extensions; scalar_t__ cert_req; int * nonce; int msg_imprint; } ;
typedef TYPE_1__ TS_REQ ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 int BIO_printf (int *,char*,...) ;
 int BIO_write (int *,char*,int) ;
 int TS_ASN1_INTEGER_print_bio (int *,int *) ;
 int TS_MSG_IMPRINT_print_bio (int *,int ) ;
 int TS_OBJ_print_bio (int *,int *) ;
 int * TS_REQ_get_policy_id (TYPE_1__*) ;
 int TS_REQ_get_version (TYPE_1__*) ;
 int TS_ext_print_bio (int *,int ) ;

int TS_REQ_print_bio(BIO *bio, TS_REQ *a)
{
    int v;
    ASN1_OBJECT *policy_id;

    if (a == ((void*)0))
        return 0;

    v = TS_REQ_get_version(a);
    BIO_printf(bio, "Version: %d\n", v);

    TS_MSG_IMPRINT_print_bio(bio, a->msg_imprint);

    BIO_printf(bio, "Policy OID: ");
    policy_id = TS_REQ_get_policy_id(a);
    if (policy_id == ((void*)0))
        BIO_printf(bio, "unspecified\n");
    else
        TS_OBJ_print_bio(bio, policy_id);

    BIO_printf(bio, "Nonce: ");
    if (a->nonce == ((void*)0))
        BIO_printf(bio, "unspecified");
    else
        TS_ASN1_INTEGER_print_bio(bio, a->nonce);
    BIO_write(bio, "\n", 1);

    BIO_printf(bio, "Certificate required: %s\n",
               a->cert_req ? "yes" : "no");

    TS_ext_print_bio(bio, a->extensions);

    return 1;
}
