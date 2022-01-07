
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSIONS ;
struct TYPE_3__ {int * extensions; } ;
typedef int OSSL_CRMF_MSG ;
typedef TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;


 int CRMF_F_OSSL_CRMF_MSG_SET0_EXTENSIONS ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 TYPE_1__* OSSL_CRMF_MSG_get0_tmpl (int *) ;
 int X509_EXTENSION_free ;
 int sk_X509_EXTENSION_free (int *) ;
 scalar_t__ sk_X509_EXTENSION_num (int *) ;
 int sk_X509_EXTENSION_pop_free (int *,int ) ;

int OSSL_CRMF_MSG_set0_extensions(OSSL_CRMF_MSG *crm,
                                  X509_EXTENSIONS *exts)
{
    OSSL_CRMF_CERTTEMPLATE *tmpl = OSSL_CRMF_MSG_get0_tmpl(crm);

    if (tmpl == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_SET0_EXTENSIONS, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (sk_X509_EXTENSION_num(exts) == 0) {
        sk_X509_EXTENSION_free(exts);
        exts = ((void*)0);
    }

    sk_X509_EXTENSION_pop_free(tmpl->extensions, X509_EXTENSION_free);
    tmpl->extensions = exts;
    return 1;
}
