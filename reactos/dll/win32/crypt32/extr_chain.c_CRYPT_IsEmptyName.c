
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbData; scalar_t__* pbData; } ;
typedef TYPE_1__ CERT_NAME_BLOB ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_IsEmptyName(const CERT_NAME_BLOB *name)
{
    BOOL empty;

    if (!name->cbData)
        empty = TRUE;
    else if (name->cbData == 2 && name->pbData[1] == 0)
    {

        empty = TRUE;
    }
    else
        empty = FALSE;
    return empty;
}
