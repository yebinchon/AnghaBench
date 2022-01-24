#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* enumProps ) (void const*,scalar_t__) ;scalar_t__ (* getProp ) (void const*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*) ;} ;
typedef  TYPE_1__ WINE_CONTEXT_INTERFACE ;
struct TYPE_6__ {int unknown; scalar_t__ cb; scalar_t__ propID; } ;
typedef  TYPE_2__ WINE_CERT_PROP_HEADER ;
typedef  int /*<<< orphan*/  const* LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,void const*,TYPE_1__ const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC7 (void const*,scalar_t__) ; 
 scalar_t__ FUNC8 (void const*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*) ; 
 scalar_t__ FUNC9 (void const*,scalar_t__) ; 
 scalar_t__ FUNC10 (void const*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*) ; 
 scalar_t__ FUNC11 (void const*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC12(const void *context,
 const BYTE *encodedContext, DWORD cbEncodedContext, DWORD contextPropID,
 const WINE_CONTEXT_INTERFACE *contextInterface, DWORD dwFlags, BOOL omitHashes,
 BYTE *pbElement, DWORD *pcbElement)
{
    BOOL ret;

    FUNC5("(%p, %p, %08x, %d, %p, %p)\n", context, contextInterface, dwFlags,
     omitHashes, pbElement, pcbElement);

    if (context)
    {
        DWORD bytesNeeded = sizeof(WINE_CERT_PROP_HEADER) + cbEncodedContext;
        DWORD prop = 0;

        ret = TRUE;
        do {
            prop = contextInterface->enumProps(context, prop);
            if (prop && (!omitHashes || !FUNC3(prop)))
            {
                DWORD propSize = 0;

                ret = contextInterface->getProp(context, prop, NULL, &propSize);
                if (ret)
                    bytesNeeded += sizeof(WINE_CERT_PROP_HEADER) + propSize;
            }
        } while (ret && prop != 0);

        if (!pbElement)
        {
            *pcbElement = bytesNeeded;
            ret = TRUE;
        }
        else if (*pcbElement < bytesNeeded)
        {
            *pcbElement = bytesNeeded;
            FUNC4(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
        {
            WINE_CERT_PROP_HEADER *hdr;
            DWORD bufSize = 0;
            LPBYTE buf = NULL;

            prop = 0;
            do {
                prop = contextInterface->enumProps(context, prop);
                if (prop && (!omitHashes || !FUNC3(prop)))
                {
                    DWORD propSize = 0;

                    ret = contextInterface->getProp(context, prop, NULL,
                     &propSize);
                    if (ret)
                    {
                        if (bufSize < propSize)
                        {
                            if (buf)
                                buf = FUNC2(buf, propSize);
                            else
                                buf = FUNC0(propSize);
                            bufSize = propSize;
                        }
                        if (buf)
                        {
                            ret = contextInterface->getProp(context, prop, buf,
                             &propSize);
                            if (ret)
                            {
                                hdr = (WINE_CERT_PROP_HEADER*)pbElement;
                                hdr->propID = prop;
                                hdr->unknown = 1;
                                hdr->cb = propSize;
                                pbElement += sizeof(WINE_CERT_PROP_HEADER);
                                if (propSize)
                                {
                                    FUNC6(pbElement, buf, propSize);
                                    pbElement += propSize;
                                }
                            }
                        }
                        else
                            ret = FALSE;
                    }
                }
            } while (ret && prop != 0);
            FUNC1(buf);

            hdr = (WINE_CERT_PROP_HEADER*)pbElement;
            hdr->propID = contextPropID;
            hdr->unknown = 1;
            hdr->cb = cbEncodedContext;
            FUNC6(pbElement + sizeof(WINE_CERT_PROP_HEADER),
             encodedContext, cbEncodedContext);
        }
    }
    else
        ret = FALSE;
    return ret;
}