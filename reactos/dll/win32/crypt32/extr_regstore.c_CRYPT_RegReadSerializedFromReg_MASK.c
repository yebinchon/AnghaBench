#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash ;
struct TYPE_5__ {int /*<<< orphan*/  (* addContextToStore ) (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* getProp ) (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ;} ;
typedef  TYPE_1__ WINE_CONTEXT_INTERFACE ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BlobW ; 
 int /*<<< orphan*/  CERT_HASH_PROP_ID ; 
 int /*<<< orphan*/  CERT_STORE_ADD_REPLACE_EXISTING ; 
#define  CERT_STORE_CERTIFICATE_CONTEXT 130 
#define  CERT_STORE_CRL_CONTEXT 129 
#define  CERT_STORE_CTL_CONTEXT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (void const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* pCRLInterface ; 
 TYPE_1__* pCTLInterface ; 
 TYPE_1__* pCertInterface ; 
 scalar_t__ FUNC14 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(HKEY key, DWORD contextType,
 HCERTSTORE store)
{
    LONG rc;
    DWORD index = 0;
    WCHAR subKeyName[MAX_PATH];

    do {
        DWORD size = FUNC0(subKeyName);

        rc = FUNC7(key, index++, subKeyName, &size, NULL, NULL, NULL,
         NULL);
        if (!rc)
        {
            HKEY subKey;

            rc = FUNC8(key, subKeyName, 0, KEY_READ, &subKey);
            if (!rc)
            {
                LPBYTE buf = NULL;

                size = 0;
                rc = FUNC9(subKey, BlobW, NULL, NULL, NULL, &size);
                if (!rc)
                    buf = FUNC4(size);
                if (buf)
                {
                    rc = FUNC9(subKey, BlobW, NULL, NULL, buf,
                     &size);
                    if (!rc)
                    {
                        const void *context;
                        DWORD addedType;

                        FUNC10("Adding cert with hash %s\n",
                         FUNC12(subKeyName));
                        context = FUNC2(buf, size,
                         contextType, &addedType);
                        if (context)
                        {
                            const WINE_CONTEXT_INTERFACE *contextInterface;
                            BYTE hash[20];

                            switch (addedType)
                            {
                            case CERT_STORE_CERTIFICATE_CONTEXT:
                                contextInterface = pCertInterface;
                                break;
                            case CERT_STORE_CRL_CONTEXT:
                                contextInterface = pCRLInterface;
                                break;
                            case CERT_STORE_CTL_CONTEXT:
                                contextInterface = pCTLInterface;
                                break;
                            default:
                                contextInterface = NULL;
                            }
                            if (contextInterface)
                            {
                                size = sizeof(hash);
                                if (contextInterface->getProp(context,
                                 CERT_HASH_PROP_ID, hash, &size))
                                {
                                    WCHAR asciiHash[20 * 2 + 1];

                                    FUNC1(hash, asciiHash);
                                    FUNC10("comparing %s\n",
                                     FUNC12(asciiHash));
                                    FUNC10("with %s\n", FUNC12(subKeyName));
                                    if (!FUNC13(asciiHash, subKeyName))
                                    {
                                        FUNC10("hash matches, adding\n");
                                        contextInterface->addContextToStore(
                                         store, context,
                                         CERT_STORE_ADD_REPLACE_EXISTING, NULL);
                                    }
                                    else
                                        FUNC10("hash doesn't match, ignoring\n");
                                }
                                FUNC3(FUNC11(context));
                            }
                        }
                    }
                    FUNC5(buf);
                }
                FUNC6(subKey);
            }
            /* Ignore intermediate errors, continue enumerating */
            rc = ERROR_SUCCESS;
        }
    } while (!rc);
}