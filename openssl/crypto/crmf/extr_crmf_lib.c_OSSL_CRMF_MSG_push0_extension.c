
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {int * extensions; } ;
typedef int OSSL_CRMF_MSG ;
typedef TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;


 int CRMF_F_OSSL_CRMF_MSG_PUSH0_EXTENSION ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 TYPE_1__* OSSL_CRMF_MSG_get0_tmpl (int *) ;
 int sk_X509_EXTENSION_free (int *) ;
 int * sk_X509_EXTENSION_new_null () ;
 int sk_X509_EXTENSION_push (int *,int *) ;

int OSSL_CRMF_MSG_push0_extension(OSSL_CRMF_MSG *crm,
                                  X509_EXTENSION *ext)
{
    int new = 0;
    OSSL_CRMF_CERTTEMPLATE *tmpl = OSSL_CRMF_MSG_get0_tmpl(crm);

    if (tmpl == ((void*)0) || ext == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_PUSH0_EXTENSION, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (tmpl->extensions == ((void*)0)) {
        if ((tmpl->extensions = sk_X509_EXTENSION_new_null()) == ((void*)0))
            goto err;
        new = 1;
    }

    if (!sk_X509_EXTENSION_push(tmpl->extensions, ext))
        goto err;
    return 1;
 err:
    if (new != 0) {
        sk_X509_EXTENSION_free(tmpl->extensions);
        tmpl->extensions = ((void*)0);
    }
    return 0;
}
