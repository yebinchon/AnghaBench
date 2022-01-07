
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cAttr; TYPE_2__* rgAttr; } ;
struct TYPE_6__ {int cValue; TYPE_1__* rgValue; scalar_t__ pszObjId; } ;
struct TYPE_5__ {scalar_t__ cbData; } ;
typedef size_t DWORD ;
typedef int CRYPT_DATA_BLOB ;
typedef TYPE_3__ CRYPT_ATTRIBUTES ;
typedef int CRYPT_ATTRIBUTE ;


 size_t ALIGN_DWORD_PTR (size_t) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static DWORD CRYPT_SizeOfAttributes(const CRYPT_ATTRIBUTES *attr)
{
    DWORD size = attr->cAttr * sizeof(CRYPT_ATTRIBUTE), i, j;

    for (i = 0; i < attr->cAttr; i++)
    {
        if (attr->rgAttr[i].pszObjId)
            size += strlen(attr->rgAttr[i].pszObjId) + 1;

        size = ALIGN_DWORD_PTR(size);
        size += attr->rgAttr[i].cValue * sizeof(CRYPT_DATA_BLOB);
        for (j = 0; j < attr->rgAttr[i].cValue; j++)
            size += attr->rgAttr[i].rgValue[j].cbData;
    }

    size = ALIGN_DWORD_PTR(size);
    return size;
}
