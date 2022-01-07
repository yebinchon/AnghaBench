
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rgValue; int cValue; scalar_t__ pszObjId; } ;
typedef TYPE_1__ CRYPT_ATTRIBUTE ;
typedef int BOOL ;


 int CRYPT_ConstructBlobArray (int *,int *,int ,int ) ;
 scalar_t__ CryptMemAlloc (scalar_t__) ;
 int FALSE ;
 int strcpy (scalar_t__,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static BOOL CRYPT_ConstructAttribute(CRYPT_ATTRIBUTE *out,
 const CRYPT_ATTRIBUTE *in)
{
    BOOL ret;

    out->pszObjId = CryptMemAlloc(strlen(in->pszObjId) + 1);
    if (out->pszObjId)
    {
        strcpy(out->pszObjId, in->pszObjId);
        ret = CRYPT_ConstructBlobArray(&out->cValue, &out->rgValue,
         in->cValue, in->rgValue);
    }
    else
        ret = FALSE;
    return ret;
}
