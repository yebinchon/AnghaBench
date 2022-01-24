#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cbData; int* pbData; } ;
typedef  int DWORD ;
typedef  TYPE_1__ CRYPT_DER_BLOB ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CRYPT_DECODE_ALLOC_FLAG ; 
 int CRYPT_DECODE_NOCOPY_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_CORRUPT ; 
 int /*<<< orphan*/  FUNC1 (int const*,int,int*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int) ; 

__attribute__((used)) static BOOL FUNC6(const BYTE *pbEncoded, DWORD cbEncoded,
 DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo, DWORD *pcbDecoded)
{
    BOOL ret;
    DWORD dataLen;

    if ((ret = FUNC1(pbEncoded, cbEncoded, &dataLen)))
    {
        BYTE lenBytes = FUNC2(pbEncoded[1]);
        DWORD bytesNeeded = sizeof(CRYPT_DER_BLOB);
       
        if (!(dwFlags & CRYPT_DECODE_NOCOPY_FLAG))
            bytesNeeded += 1 + lenBytes + dataLen;

        if (pcbDecoded)
            *pcbDecoded = 1 + lenBytes + dataLen;
        if (!pvStructInfo)
            *pcbStructInfo = bytesNeeded;
        else if ((ret = FUNC0(pcbStructInfo, bytesNeeded)))
        {
            CRYPT_DER_BLOB *blob;

            if (dwFlags & CRYPT_DECODE_ALLOC_FLAG)
                pvStructInfo = *(BYTE **)pvStructInfo;
            blob = pvStructInfo;
            blob->cbData = 1 + lenBytes + dataLen;
            if (blob->cbData)
            {
                if (dwFlags & CRYPT_DECODE_NOCOPY_FLAG)
                    blob->pbData = (BYTE *)pbEncoded;
                else
                {
                    FUNC4(blob->pbData);
                    FUNC5(blob->pbData, pbEncoded, blob->cbData);
                }
            }
            else
            {
                FUNC3(CRYPT_E_ASN1_CORRUPT);
                ret = FALSE;
            }
        }
    }
    return ret;
}