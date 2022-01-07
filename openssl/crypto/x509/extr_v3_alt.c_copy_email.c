
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
struct TYPE_9__ {scalar_t__ flags; int * subject_req; int * subject_cert; } ;
typedef TYPE_2__ X509V3_CTX ;
struct TYPE_8__ {int * ia5; } ;
struct TYPE_10__ {int type; TYPE_1__ d; } ;
typedef int GENERAL_NAMES ;
typedef TYPE_3__ GENERAL_NAME ;
typedef int ASN1_IA5STRING ;


 int ASN1_IA5STRING_free (int *) ;
 int * ASN1_STRING_dup (int ) ;
 scalar_t__ CTX_TEST ;
 int ERR_R_MALLOC_FAILURE ;
 int GENERAL_NAME_free (TYPE_3__*) ;
 TYPE_3__* GENERAL_NAME_new () ;
 int GEN_EMAIL ;
 int NID_pkcs9_emailAddress ;
 int X509V3_F_COPY_EMAIL ;
 int X509V3_R_NO_SUBJECT_DETAILS ;
 int X509V3err (int ,int ) ;
 int X509_NAME_ENTRY_free (int *) ;
 int X509_NAME_ENTRY_get_data (int *) ;
 int X509_NAME_delete_entry (int *,int) ;
 int * X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_NID (int *,int ,int) ;
 int * X509_REQ_get_subject_name (int *) ;
 int * X509_get_subject_name (int *) ;
 int sk_GENERAL_NAME_push (int *,TYPE_3__*) ;

__attribute__((used)) static int copy_email(X509V3_CTX *ctx, GENERAL_NAMES *gens, int move_p)
{
    X509_NAME *nm;
    ASN1_IA5STRING *email = ((void*)0);
    X509_NAME_ENTRY *ne;
    GENERAL_NAME *gen = ((void*)0);
    int i = -1;

    if (ctx != ((void*)0) && ctx->flags == CTX_TEST)
        return 1;
    if (ctx == ((void*)0)
        || (ctx->subject_cert == ((void*)0) && ctx->subject_req == ((void*)0))) {
        X509V3err(X509V3_F_COPY_EMAIL, X509V3_R_NO_SUBJECT_DETAILS);
        goto err;
    }

    if (ctx->subject_cert)
        nm = X509_get_subject_name(ctx->subject_cert);
    else
        nm = X509_REQ_get_subject_name(ctx->subject_req);


    while ((i = X509_NAME_get_index_by_NID(nm,
                                           NID_pkcs9_emailAddress, i)) >= 0) {
        ne = X509_NAME_get_entry(nm, i);
        email = ASN1_STRING_dup(X509_NAME_ENTRY_get_data(ne));
        if (move_p) {
            X509_NAME_delete_entry(nm, i);
            X509_NAME_ENTRY_free(ne);
            i--;
        }
        if (email == ((void*)0) || (gen = GENERAL_NAME_new()) == ((void*)0)) {
            X509V3err(X509V3_F_COPY_EMAIL, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        gen->d.ia5 = email;
        email = ((void*)0);
        gen->type = GEN_EMAIL;
        if (!sk_GENERAL_NAME_push(gens, gen)) {
            X509V3err(X509V3_F_COPY_EMAIL, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        gen = ((void*)0);
    }

    return 1;

 err:
    GENERAL_NAME_free(gen);
    ASN1_IA5STRING_free(email);
    return 0;

}
