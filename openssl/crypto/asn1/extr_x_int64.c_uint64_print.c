
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_3__ {int size; } ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_PCTX ;
typedef TYPE_1__ ASN1_ITEM ;


 int BIO_printf (int *,char*,int ) ;
 int INTxx_FLAG_SIGNED ;

__attribute__((used)) static int uint64_print(BIO *out, const ASN1_VALUE **pval, const ASN1_ITEM *it,
                        int indent, const ASN1_PCTX *pctx)
{
    if ((it->size & INTxx_FLAG_SIGNED) == INTxx_FLAG_SIGNED)
        return BIO_printf(out, "%jd\n", **(int64_t **)pval);
    return BIO_printf(out, "%ju\n", **(uint64_t **)pval);
}
