#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pbData; int /*<<< orphan*/  cbData; } ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ CRYPT_DATA_BLOB ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_QUERY_CONTENT_SERIALIZED_STORE ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 

__attribute__((used)) static BOOL FUNC5(const CRYPT_DATA_BLOB *blob,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HCERTSTORE store = FUNC3(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, NULL);
    BOOL ret;

    FUNC4("(%d, %p)\n", blob->cbData, blob->pbData);

    ret = FUNC0(blob, store);
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
    FUNC4("returning %d\n", ret);
    return ret;
}