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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
struct TYPE_2__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int DWORD ;
typedef  TYPE_1__ CRYPT_DATA_BLOB ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ; 
 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ; 
 int CMSG_SIGNED ; 
 int /*<<< orphan*/  CMSG_TYPE_PARAM ; 
 int /*<<< orphan*/  CRYPT_E_INVALID_MSG_TYPE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static WINECRYPT_CERTSTORE *FUNC7(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCRYPTMSG msg;
    WINECRYPT_CERTSTORE *store = NULL;
    const CRYPT_DATA_BLOB *data = pvPara;
    BOOL ret;
    DWORD msgOpenFlags = dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG ? 0 :
     CMSG_CRYPT_RELEASE_CONTEXT_FLAG;

    FUNC6("(%ld, %08x, %p)\n", &hCryptProv, dwFlags, pvPara);

    msg = FUNC3(PKCS_7_ASN_ENCODING, msgOpenFlags, CMSG_SIGNED,
     hCryptProv, NULL, NULL);
    ret = FUNC4(msg, data->pbData, data->cbData, TRUE);
    if (!ret)
    {
        FUNC1(msg);
        msg = FUNC3(PKCS_7_ASN_ENCODING, msgOpenFlags, 0,
         hCryptProv, NULL, NULL);
        ret = FUNC4(msg, data->pbData, data->cbData, TRUE);
        if (ret)
        {
            DWORD type, size = sizeof(type);

            /* Only signed messages are allowed, check type */
            ret = FUNC2(msg, CMSG_TYPE_PARAM, 0, &type, &size);
            if (ret && type != CMSG_SIGNED)
            {
                FUNC5(CRYPT_E_INVALID_MSG_TYPE);
                ret = FALSE;
            }
        }
    }
    if (ret)
        store = FUNC0(0, dwFlags, msg);
    FUNC1(msg);
    FUNC6("returning %p\n", store);
    return store;
}