#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_13__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_12__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_11__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_10__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_9__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct protect_data_t {TYPE_6__ fingerprint; TYPE_5__ cipher; TYPE_4__ salt; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  null1; TYPE_3__ data0; int /*<<< orphan*/  cipher_key_len; int /*<<< orphan*/  cipher_alg; scalar_t__ szDataDescr; int /*<<< orphan*/  null0; TYPE_2__ info1; int /*<<< orphan*/  count1; TYPE_1__ info0; int /*<<< orphan*/  count0; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_15__ {int cbData; int /*<<< orphan*/ * pbData; } ;
typedef  int DWORD ;
typedef  TYPE_7__ DATA_BLOB ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
BOOL FUNC7(const struct protect_data_t *pInfo, DATA_BLOB *pSerial)
{
    BYTE * ptr;
    DWORD dwStrLen;
    DWORD dwStruct;

    FUNC3("called\n");

    if (!pInfo || !pInfo->szDataDescr || !pSerial ||
        !pInfo->info0.pbData || !pInfo->info1.pbData ||
        !pInfo->data0.pbData || !pInfo->salt.pbData ||
        !pInfo->cipher.pbData || !pInfo->fingerprint.pbData)
    {
        return FALSE;
    }

    if (pInfo->info0.cbData!=16)
    {
        FUNC0("protect_data_t info0 not 16 bytes long\n");
    }

    if (pInfo->info1.cbData!=16)
    {
        FUNC0("protect_data_t info1 not 16 bytes long\n");
    }

    dwStrLen=FUNC4(pInfo->szDataDescr);

    pSerial->cbData=0;
    pSerial->cbData+=sizeof(DWORD)*8; /* 8 raw DWORDs */
    pSerial->cbData+=sizeof(DWORD)*4; /* 4 BLOBs with size */
    pSerial->cbData+=pInfo->info0.cbData;
    pSerial->cbData+=pInfo->info1.cbData;
    pSerial->cbData+=(dwStrLen+1)*sizeof(WCHAR) + 4; /* str, null, size */
    pSerial->cbData+=pInfo->data0.cbData;
    pSerial->cbData+=pInfo->salt.cbData;
    pSerial->cbData+=pInfo->cipher.cbData;
    pSerial->cbData+=pInfo->fingerprint.cbData;

    /* save the actual structure size */
    dwStruct = pSerial->cbData;
    /* There may be a 256 byte minimum, but I can't prove it. */
    /*if (pSerial->cbData<256) pSerial->cbData=256;*/

    pSerial->pbData=FUNC1(LPTR,pSerial->cbData);
    if (!pSerial->pbData) return FALSE;

    ptr=pSerial->pbData;

    /* count0 */
    FUNC5(pInfo->count0,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    
    /* info0 */
    FUNC6(pInfo->info0.pbData,&ptr,
                     pInfo->info0.cbData,sizeof(BYTE),FALSE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* count1 */
    FUNC5(pInfo->count1,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* info1 */
    FUNC6(pInfo->info1.pbData,&ptr,
                     pInfo->info1.cbData,sizeof(BYTE),FALSE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* null0 */
    FUNC5(pInfo->null0,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    
    /* szDataDescr */
    FUNC6((BYTE*)pInfo->szDataDescr,&ptr,
                     (dwStrLen+1)*sizeof(WCHAR),sizeof(BYTE),TRUE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* cipher_alg */
    FUNC5(pInfo->cipher_alg,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    /* cipher_key_len */
    FUNC5(pInfo->cipher_key_len,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    
    /* data0 */
    FUNC6(pInfo->data0.pbData,&ptr,
                     pInfo->data0.cbData,sizeof(BYTE),TRUE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* null1 */
    FUNC5(pInfo->null1,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    
    /* hash_alg */
    FUNC5(pInfo->hash_alg,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    /* hash_len */
    FUNC5(pInfo->hash_len,&ptr);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/
    
    /* salt */
    FUNC6(pInfo->salt.pbData,&ptr,
                     pInfo->salt.cbData,sizeof(BYTE),TRUE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* cipher */
    FUNC6(pInfo->cipher.pbData,&ptr,
                     pInfo->cipher.cbData,sizeof(BYTE),TRUE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    /* fingerprint */
    FUNC6(pInfo->fingerprint.pbData,&ptr,
                     pInfo->fingerprint.cbData,sizeof(BYTE),TRUE);
    /*TRACE("used %u\n",ptr-pSerial->pbData);*/

    if (ptr - pSerial->pbData != dwStruct)
    {
        FUNC0("struct size changed!? expected %u\n", dwStruct);
        FUNC2(pSerial->pbData);
        pSerial->pbData=NULL;
        pSerial->cbData=0;
        return FALSE;
    }

    return TRUE;
}