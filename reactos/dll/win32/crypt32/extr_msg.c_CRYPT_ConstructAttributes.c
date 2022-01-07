
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cAttr; int * rgAttr; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CRYPT_ATTRIBUTES ;
typedef int CRYPT_ATTRIBUTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_ConstructAttribute (int *,int *) ;
 int * CryptMemAlloc (int) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static BOOL CRYPT_ConstructAttributes(CRYPT_ATTRIBUTES *out,
 const CRYPT_ATTRIBUTES *in)
{
    BOOL ret = TRUE;

    out->cAttr = in->cAttr;
    if (out->cAttr)
    {
        out->rgAttr = CryptMemAlloc(out->cAttr * sizeof(CRYPT_ATTRIBUTE));
        if (out->rgAttr)
        {
            DWORD i;

            memset(out->rgAttr, 0, out->cAttr * sizeof(CRYPT_ATTRIBUTE));
            for (i = 0; ret && i < out->cAttr; i++)
                ret = CRYPT_ConstructAttribute(&out->rgAttr[i], &in->rgAttr[i]);
        }
        else
            ret = FALSE;
    }
    else
        out->rgAttr = ((void*)0);
    return ret;
}
