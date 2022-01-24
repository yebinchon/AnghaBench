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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_QUERY_CONTENT_SERIALIZED_STORE ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(LPCWSTR fileName,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HANDLE file;
    BOOL ret = FALSE;

    FUNC6("%s\n", FUNC7(fileName));
    file = FUNC5(fileName, GENERIC_READ, FILE_SHARE_READ, NULL,
     OPEN_EXISTING, 0, NULL);
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE store = FUNC3(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, NULL);

        ret = FUNC0(file, store);
        if (ret)
        {
            if (pdwMsgAndCertEncodingType)
                *pdwMsgAndCertEncodingType = X509_ASN_ENCODING;
            if (pdwContentType)
                *pdwContentType = CERT_QUERY_CONTENT_SERIALIZED_STORE;
            if (phCertStore)
                *phCertStore = FUNC2(store);
        }
        FUNC1(store, 0);
        FUNC4(file);
    }
    FUNC6("returning %d\n", ret);
    return ret;
}