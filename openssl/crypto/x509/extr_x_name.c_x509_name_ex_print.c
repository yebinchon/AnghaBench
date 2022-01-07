
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int nm_flags; } ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_PCTX ;


 scalar_t__ X509_NAME_print_ex (int *,int const*,int,int ) ;

__attribute__((used)) static int x509_name_ex_print(BIO *out, const ASN1_VALUE **pval,
                              int indent,
                              const char *fname, const ASN1_PCTX *pctx)
{
    if (X509_NAME_print_ex(out, (const X509_NAME *)*pval,
                           indent, pctx->nm_flags) <= 0)
        return 0;
    return 2;
}
