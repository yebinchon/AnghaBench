#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct AsnDecodeSequenceItem {int const tag; int pointerOffset; int (* decodeFunc ) (int const*,int,int,int*,scalar_t__*,int*) ;int offset; scalar_t__ size; scalar_t__ minSize; scalar_t__ optional; scalar_t__ hasPointer; } ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int CMSG_INDEFINITE_LENGTH ; 
 int CRYPT_DECODE_ALLOC_FLAG ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_BADTAG ; 
 int /*<<< orphan*/  CRYPT_E_ASN1_CORRUPT ; 
 int FUNC1 (int const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FALSE ; 
 int FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  NOERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int FUNC8 (int const*,int,int,int*,scalar_t__*,int*) ; 

__attribute__((used)) static BOOL FUNC9(struct AsnDecodeSequenceItem items[],
 DWORD cItem, const BYTE *pbEncoded, DWORD cbEncoded, DWORD dwFlags,
 void *pvStructInfo, BYTE *nextData, DWORD *cbDecoded)
{
    BOOL ret;
    DWORD i, decoded = 0;
    const BYTE *ptr = pbEncoded;

    FUNC6("%p, %d, %p, %d, %08x, %p, %p, %p\n", items, cItem, pbEncoded,
     cbEncoded, dwFlags, pvStructInfo, nextData, cbDecoded);

    for (i = 0, ret = TRUE; ret && i < cItem; i++)
    {
        if (cbEncoded - (ptr - pbEncoded) != 0)
        {
            DWORD itemLen;

            if ((ret = FUNC1(ptr,
             cbEncoded - (ptr - pbEncoded), &itemLen)))
            {
                BYTE itemLenBytes = FUNC3(ptr[1]);

                if (ptr[0] == items[i].tag || !items[i].tag)
                {
                    DWORD itemEncodedLen;

                    if (itemLen == CMSG_INDEFINITE_LENGTH)
                        itemEncodedLen = cbEncoded - (ptr - pbEncoded);
                    else
                        itemEncodedLen = 1 + itemLenBytes + itemLen;
                    if (nextData && pvStructInfo && items[i].hasPointer)
                    {
                        FUNC6("Setting next pointer to %p\n",
                         nextData);
                        *(BYTE **)((BYTE *)pvStructInfo +
                         items[i].pointerOffset) = nextData;
                    }
                    if (items[i].decodeFunc)
                    {
                        DWORD itemDecoded;

                        if (pvStructInfo)
                            FUNC6("decoding item %d\n", i);
                        else
                            FUNC6("sizing item %d\n", i);
                        ret = items[i].decodeFunc(ptr, itemEncodedLen,
                         dwFlags & ~CRYPT_DECODE_ALLOC_FLAG,
                         pvStructInfo ?  (BYTE *)pvStructInfo + items[i].offset
                         : NULL, &items[i].size, &itemDecoded);
                        if (ret)
                        {
                            if (items[i].size < items[i].minSize)
                                items[i].size = items[i].minSize;
                            else if (items[i].size > items[i].minSize)
                            {
                                /* Account for alignment padding */
                                items[i].size = FUNC0(items[i].size);
                            }
                            FUNC6("item %d size: %d\n", i, items[i].size);
                            if (nextData && items[i].hasPointer &&
                             items[i].size > items[i].minSize)
                                nextData += items[i].size - items[i].minSize;
                            if (itemDecoded > itemEncodedLen)
                            {
                                FUNC7("decoded length %d exceeds encoded %d\n",
                                 itemDecoded, itemEncodedLen);
                                FUNC5(CRYPT_E_ASN1_CORRUPT);
                                ret = FALSE;
                            }
                            else
                            {
                                ptr += itemDecoded;
                                decoded += itemDecoded;
                                FUNC6("item %d: decoded %d bytes\n", i,
                                 itemDecoded);
                            }
                        }
                        else if (items[i].optional &&
                         FUNC4() == CRYPT_E_ASN1_BADTAG)
                        {
                            FUNC6("skipping optional item %d\n", i);
                            items[i].size = items[i].minSize;
                            FUNC5(NOERROR);
                            ret = TRUE;
                        }
                        else
                            FUNC6("item %d failed: %08x\n", i,
                             FUNC4());
                    }
                    else if (itemLen == CMSG_INDEFINITE_LENGTH)
                    {
                        FUNC2("can't use indefinite length encoding without a decoder\n");
                        FUNC5(CRYPT_E_ASN1_CORRUPT);
                        ret = FALSE;
                    }
                    else
                    {
                        FUNC6("item %d: decoded %d bytes\n", i, itemEncodedLen);
                        ptr += itemEncodedLen;
                        decoded += itemEncodedLen;
                        items[i].size = items[i].minSize;
                    }
                }
                else if (items[i].optional)
                {
                    FUNC6("skipping optional item %d\n", i);
                    items[i].size = items[i].minSize;
                }
                else
                {
                    FUNC6("item %d: tag %02x doesn't match expected %02x\n",
                     i, ptr[0], items[i].tag);
                    FUNC5(CRYPT_E_ASN1_BADTAG);
                    ret = FALSE;
                }
            }
        }
        else if (items[i].optional)
        {
            FUNC6("missing optional item %d, skipping\n", i);
            items[i].size = items[i].minSize;
        }
        else
        {
            FUNC6("not enough bytes for item %d, failing\n", i);
            FUNC5(CRYPT_E_ASN1_CORRUPT);
            ret = FALSE;
        }
    }
    if (cbDecoded)
        *cbDecoded = decoded;
    FUNC6("returning %d\n", ret);
    return ret;
}