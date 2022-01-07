
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nullParams ;
struct TYPE_10__ {int properties; } ;
struct TYPE_8__ {int cbData; int * pbData; } ;
struct TYPE_9__ {TYPE_1__ Parameters; scalar_t__ pszObjId; } ;
typedef scalar_t__ LPSTR ;
typedef int DWORD ;
typedef TYPE_2__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef TYPE_3__ CDecodeMsg ;
typedef int BYTE ;



 int ContextPropertyList_SetProperty (int ,int,int *,int) ;
 TYPE_2__* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_2__*) ;
 int memcmp (int *,int const*,int) ;
 int memcpy (int *,int *,int) ;
 int strcpy (scalar_t__,scalar_t__) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void CDecodeMsg_SaveAlgorithmID(CDecodeMsg *msg, DWORD param,
 const CRYPT_ALGORITHM_IDENTIFIER *id)
{
    static const BYTE nullParams[] = { 128, 0 };
    CRYPT_ALGORITHM_IDENTIFIER *copy;
    DWORD len = sizeof(CRYPT_ALGORITHM_IDENTIFIER);


    len += strlen(id->pszObjId) + 1;
    len += id->Parameters.cbData;
    copy = CryptMemAlloc(len);
    if (copy)
    {
        copy->pszObjId =
         (LPSTR)((BYTE *)copy + sizeof(CRYPT_ALGORITHM_IDENTIFIER));
        strcpy(copy->pszObjId, id->pszObjId);
        copy->Parameters.pbData = (BYTE *)copy->pszObjId + strlen(id->pszObjId)
         + 1;

        if (id->Parameters.cbData == sizeof(nullParams) &&
         !memcmp(id->Parameters.pbData, nullParams, sizeof(nullParams)))
        {
            copy->Parameters.cbData = 0;
            len -= sizeof(nullParams);
        }
        else
            copy->Parameters.cbData = id->Parameters.cbData;
        if (copy->Parameters.cbData)
            memcpy(copy->Parameters.pbData, id->Parameters.pbData,
             id->Parameters.cbData);
        ContextPropertyList_SetProperty(msg->properties, param, (BYTE *)copy,
         len);
        CryptMemFree(copy);
    }
}
