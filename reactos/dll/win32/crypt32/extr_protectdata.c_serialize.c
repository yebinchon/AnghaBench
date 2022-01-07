
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int cbData; int * pbData; } ;
struct TYPE_13__ {int cbData; int * pbData; } ;
struct TYPE_12__ {int cbData; int * pbData; } ;
struct TYPE_11__ {int cbData; int * pbData; } ;
struct TYPE_10__ {int cbData; int * pbData; } ;
struct TYPE_9__ {int cbData; int * pbData; } ;
struct protect_data_t {TYPE_6__ fingerprint; TYPE_5__ cipher; TYPE_4__ salt; int hash_len; int hash_alg; int null1; TYPE_3__ data0; int cipher_key_len; int cipher_alg; scalar_t__ szDataDescr; int null0; TYPE_2__ info1; int count1; TYPE_1__ info0; int count0; } ;
typedef int WCHAR ;
struct TYPE_15__ {int cbData; int * pbData; } ;
typedef int DWORD ;
typedef TYPE_7__ DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int ERR (char*,...) ;
 int FALSE ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int TRACE (char*) ;
 int TRUE ;
 int lstrlenW (scalar_t__) ;
 int serialize_dword (int ,int **) ;
 int serialize_string (int *,int **,int,int,int ) ;

__attribute__((used)) static
BOOL serialize(const struct protect_data_t *pInfo, DATA_BLOB *pSerial)
{
    BYTE * ptr;
    DWORD dwStrLen;
    DWORD dwStruct;

    TRACE("called\n");

    if (!pInfo || !pInfo->szDataDescr || !pSerial ||
        !pInfo->info0.pbData || !pInfo->info1.pbData ||
        !pInfo->data0.pbData || !pInfo->salt.pbData ||
        !pInfo->cipher.pbData || !pInfo->fingerprint.pbData)
    {
        return FALSE;
    }

    if (pInfo->info0.cbData!=16)
    {
        ERR("protect_data_t info0 not 16 bytes long\n");
    }

    if (pInfo->info1.cbData!=16)
    {
        ERR("protect_data_t info1 not 16 bytes long\n");
    }

    dwStrLen=lstrlenW(pInfo->szDataDescr);

    pSerial->cbData=0;
    pSerial->cbData+=sizeof(DWORD)*8;
    pSerial->cbData+=sizeof(DWORD)*4;
    pSerial->cbData+=pInfo->info0.cbData;
    pSerial->cbData+=pInfo->info1.cbData;
    pSerial->cbData+=(dwStrLen+1)*sizeof(WCHAR) + 4;
    pSerial->cbData+=pInfo->data0.cbData;
    pSerial->cbData+=pInfo->salt.cbData;
    pSerial->cbData+=pInfo->cipher.cbData;
    pSerial->cbData+=pInfo->fingerprint.cbData;


    dwStruct = pSerial->cbData;



    pSerial->pbData=LocalAlloc(LPTR,pSerial->cbData);
    if (!pSerial->pbData) return FALSE;

    ptr=pSerial->pbData;


    serialize_dword(pInfo->count0,&ptr);



    serialize_string(pInfo->info0.pbData,&ptr,
                     pInfo->info0.cbData,sizeof(BYTE),FALSE);



    serialize_dword(pInfo->count1,&ptr);



    serialize_string(pInfo->info1.pbData,&ptr,
                     pInfo->info1.cbData,sizeof(BYTE),FALSE);



    serialize_dword(pInfo->null0,&ptr);



    serialize_string((BYTE*)pInfo->szDataDescr,&ptr,
                     (dwStrLen+1)*sizeof(WCHAR),sizeof(BYTE),TRUE);



    serialize_dword(pInfo->cipher_alg,&ptr);


    serialize_dword(pInfo->cipher_key_len,&ptr);



    serialize_string(pInfo->data0.pbData,&ptr,
                     pInfo->data0.cbData,sizeof(BYTE),TRUE);



    serialize_dword(pInfo->null1,&ptr);



    serialize_dword(pInfo->hash_alg,&ptr);


    serialize_dword(pInfo->hash_len,&ptr);



    serialize_string(pInfo->salt.pbData,&ptr,
                     pInfo->salt.cbData,sizeof(BYTE),TRUE);



    serialize_string(pInfo->cipher.pbData,&ptr,
                     pInfo->cipher.cbData,sizeof(BYTE),TRUE);



    serialize_string(pInfo->fingerprint.pbData,&ptr,
                     pInfo->fingerprint.cbData,sizeof(BYTE),TRUE);


    if (ptr - pSerial->pbData != dwStruct)
    {
        ERR("struct size changed!? expected %u\n", dwStruct);
        LocalFree(pSerial->pbData);
        pSerial->pbData=((void*)0);
        pSerial->cbData=0;
        return FALSE;
    }

    return TRUE;
}
