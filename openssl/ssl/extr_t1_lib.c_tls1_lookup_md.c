
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hash; int hash_idx; } ;
typedef TYPE_1__ SIGALG_LOOKUP ;
typedef int EVP_MD ;


 scalar_t__ NID_undef ;
 int * ssl_md (int ) ;

int tls1_lookup_md(const SIGALG_LOOKUP *lu, const EVP_MD **pmd)
{
    const EVP_MD *md;
    if (lu == ((void*)0))
        return 0;

    if (lu->hash == NID_undef) {
        md = ((void*)0);
    } else {
        md = ssl_md(lu->hash_idx);
        if (md == ((void*)0))
            return 0;
    }
    if (pmd)
        *pmd = md;
    return 1;
}
