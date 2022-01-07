
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Parameters; scalar_t__ pszObjId; } ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_1__ CRYPT_ALGORITHM_IDENTIFIER ;


 int CRYPT_CopyBlob (int *,int *,scalar_t__*) ;
 int strcpy (scalar_t__,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static inline void CRYPT_CopyAlgorithmId(CRYPT_ALGORITHM_IDENTIFIER *out,
 const CRYPT_ALGORITHM_IDENTIFIER *in, LPBYTE *nextData)
{
    if (in->pszObjId)
    {
        out->pszObjId = (LPSTR)*nextData;
        strcpy(out->pszObjId, in->pszObjId);
        *nextData += strlen(out->pszObjId) + 1;
    }
    CRYPT_CopyBlob(&out->Parameters, &in->Parameters, nextData);
}
