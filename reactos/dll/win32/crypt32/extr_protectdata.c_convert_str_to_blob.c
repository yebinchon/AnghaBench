
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pbData; scalar_t__ cbData; } ;
typedef int LPSTR ;
typedef int LPCSTR ;
typedef TYPE_1__ DATA_BLOB ;
typedef int BYTE ;


 int * CryptMemAlloc (scalar_t__) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static
BYTE *convert_str_to_blob(LPCSTR str, DATA_BLOB *blob)
{
    if (!str || !blob) return ((void*)0);

    blob->cbData=strlen(str)+1;
    if (!(blob->pbData=CryptMemAlloc(blob->cbData)))
    {
        blob->cbData=0;
    }
    else {
        strcpy((LPSTR)blob->pbData, str);
    }

    return blob->pbData;
}
