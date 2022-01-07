
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* enumProps ) (void const*,scalar_t__) ;scalar_t__ (* getProp ) (void const*,scalar_t__,int const*,scalar_t__*) ;} ;
typedef TYPE_1__ WINE_CONTEXT_INTERFACE ;
struct TYPE_6__ {int unknown; scalar_t__ cb; scalar_t__ propID; } ;
typedef TYPE_2__ WINE_CERT_PROP_HEADER ;
typedef int const* LPBYTE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int * CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (int const*) ;
 int * CryptMemRealloc (int const*,scalar_t__) ;
 int ERROR_MORE_DATA ;
 scalar_t__ FALSE ;
 int IS_CERT_HASH_PROP_ID (scalar_t__) ;
 int SetLastError (int ) ;
 int TRACE (char*,void const*,TYPE_1__ const*,scalar_t__,scalar_t__,int *,scalar_t__*) ;
 scalar_t__ TRUE ;
 int memcpy (int *,int const*,scalar_t__) ;
 scalar_t__ stub1 (void const*,scalar_t__) ;
 scalar_t__ stub2 (void const*,scalar_t__,int const*,scalar_t__*) ;
 scalar_t__ stub3 (void const*,scalar_t__) ;
 scalar_t__ stub4 (void const*,scalar_t__,int const*,scalar_t__*) ;
 scalar_t__ stub5 (void const*,scalar_t__,int const*,scalar_t__*) ;

__attribute__((used)) static BOOL CRYPT_SerializeStoreElement(const void *context,
 const BYTE *encodedContext, DWORD cbEncodedContext, DWORD contextPropID,
 const WINE_CONTEXT_INTERFACE *contextInterface, DWORD dwFlags, BOOL omitHashes,
 BYTE *pbElement, DWORD *pcbElement)
{
    BOOL ret;

    TRACE("(%p, %p, %08x, %d, %p, %p)\n", context, contextInterface, dwFlags,
     omitHashes, pbElement, pcbElement);

    if (context)
    {
        DWORD bytesNeeded = sizeof(WINE_CERT_PROP_HEADER) + cbEncodedContext;
        DWORD prop = 0;

        ret = TRUE;
        do {
            prop = contextInterface->enumProps(context, prop);
            if (prop && (!omitHashes || !IS_CERT_HASH_PROP_ID(prop)))
            {
                DWORD propSize = 0;

                ret = contextInterface->getProp(context, prop, ((void*)0), &propSize);
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
            SetLastError(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
        {
            WINE_CERT_PROP_HEADER *hdr;
            DWORD bufSize = 0;
            LPBYTE buf = ((void*)0);

            prop = 0;
            do {
                prop = contextInterface->enumProps(context, prop);
                if (prop && (!omitHashes || !IS_CERT_HASH_PROP_ID(prop)))
                {
                    DWORD propSize = 0;

                    ret = contextInterface->getProp(context, prop, ((void*)0),
                     &propSize);
                    if (ret)
                    {
                        if (bufSize < propSize)
                        {
                            if (buf)
                                buf = CryptMemRealloc(buf, propSize);
                            else
                                buf = CryptMemAlloc(propSize);
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
                                    memcpy(pbElement, buf, propSize);
                                    pbElement += propSize;
                                }
                            }
                        }
                        else
                            ret = FALSE;
                    }
                }
            } while (ret && prop != 0);
            CryptMemFree(buf);

            hdr = (WINE_CERT_PROP_HEADER*)pbElement;
            hdr->propID = contextPropID;
            hdr->unknown = 1;
            hdr->cb = cbEncodedContext;
            memcpy(pbElement + sizeof(WINE_CERT_PROP_HEADER),
             encodedContext, cbEncodedContext);
        }
    }
    else
        ret = FALSE;
    return ret;
}
