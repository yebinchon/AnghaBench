
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Parameters; scalar_t__ pszObjId; } ;
typedef TYPE_1__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef int BOOL ;


 int CRYPT_ConstructBlob (int *,int *) ;
 scalar_t__ CryptMemAlloc (scalar_t__) ;
 int FALSE ;
 int strcpy (scalar_t__,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static BOOL CRYPT_ConstructAlgorithmId(CRYPT_ALGORITHM_IDENTIFIER *out,
 const CRYPT_ALGORITHM_IDENTIFIER *in)
{
    out->pszObjId = CryptMemAlloc(strlen(in->pszObjId) + 1);
    if (out->pszObjId)
    {
        strcpy(out->pszObjId, in->pszObjId);
        return CRYPT_ConstructBlob(&out->Parameters, &in->Parameters);
    }
    else
        return FALSE;
}
