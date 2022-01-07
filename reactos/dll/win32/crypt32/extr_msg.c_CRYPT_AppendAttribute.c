
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cAttr; int * rgAttr; } ;
typedef TYPE_1__ CRYPT_ATTRIBUTES ;
typedef int CRYPT_ATTRIBUTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_ConstructAttribute (int *,int const*) ;
 int * CryptMemRealloc (int *,int) ;
 scalar_t__ FALSE ;

__attribute__((used)) static BOOL CRYPT_AppendAttribute(CRYPT_ATTRIBUTES *out,
 const CRYPT_ATTRIBUTE *in)
{
    BOOL ret = FALSE;

    out->rgAttr = CryptMemRealloc(out->rgAttr,
     (out->cAttr + 1) * sizeof(CRYPT_ATTRIBUTE));
    if (out->rgAttr)
    {
        ret = CRYPT_ConstructAttribute(&out->rgAttr[out->cAttr], in);
        if (ret)
            out->cAttr++;
    }
    return ret;
}
