
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
struct protect_data_t {TYPE_6__ fingerprint; TYPE_5__ cipher; TYPE_4__ salt; int hash_len; int hash_alg; int null1; TYPE_3__ data0; int cipher_key_len; int cipher_alg; int szDataDescr; int null0; TYPE_2__ info1; int count1; TYPE_1__ info0; int count0; } ;
struct TYPE_15__ {scalar_t__ cbData; int * pbData; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_7__ DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int ERR (char*,...) ;
 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;
 int unserialize_dword (int *,scalar_t__*,scalar_t__,int *) ;
 int unserialize_string (int *,scalar_t__*,scalar_t__,int,int,int ,int **,int *) ;

__attribute__((used)) static
BOOL unserialize(const DATA_BLOB *pSerial, struct protect_data_t *pInfo)
{
    BYTE * ptr;
    DWORD index;
    DWORD size;
    BOOL status=TRUE;

    TRACE("called\n");

    if (!pInfo || !pSerial || !pSerial->pbData)
        return FALSE;

    index=0;
    ptr=pSerial->pbData;
    size=pSerial->cbData;


    if (!unserialize_dword(ptr,&index,size,&pInfo->count0))
    {
        ERR("reading count0 failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,16,sizeof(BYTE),FALSE,
                            &pInfo->info0.pbData, &pInfo->info0.cbData))
    {
        ERR("reading info0 failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->count1))
    {
        ERR("reading count1 failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,16,sizeof(BYTE),FALSE,
                            &pInfo->info1.pbData, &pInfo->info1.cbData))
    {
        ERR("reading info1 failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->null0))
    {
        ERR("reading null0 failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,0,sizeof(BYTE),TRUE,
                            (BYTE**)&pInfo->szDataDescr, ((void*)0)))
    {
        ERR("reading szDataDescr failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->cipher_alg))
    {
        ERR("reading cipher_alg failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->cipher_key_len))
    {
        ERR("reading cipher_key_len failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,0,sizeof(BYTE),TRUE,
                            &pInfo->data0.pbData, &pInfo->data0.cbData))
    {
        ERR("reading data0 failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->null1))
    {
        ERR("reading null1 failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->hash_alg))
    {
        ERR("reading hash_alg failed!\n");
        return FALSE;
    }


    if (!unserialize_dword(ptr,&index,size,&pInfo->hash_len))
    {
        ERR("reading hash_len failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,0,sizeof(BYTE),TRUE,
                            &pInfo->salt.pbData, &pInfo->salt.cbData))
    {
        ERR("reading salt failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,0,sizeof(BYTE),TRUE,
                            &pInfo->cipher.pbData, &pInfo->cipher.cbData))
    {
        ERR("reading cipher failed!\n");
        return FALSE;
    }


    if (!unserialize_string(ptr,&index,size,0,sizeof(BYTE),TRUE,
                            &pInfo->fingerprint.pbData, &pInfo->fingerprint.cbData))
    {
        ERR("reading fingerprint failed!\n");
        return FALSE;
    }



    if (index>size)
    {


        ERR("loaded corrupt structure! (used %u expected %u)\n", index, size);
        status=FALSE;
    }

    return status;
}
