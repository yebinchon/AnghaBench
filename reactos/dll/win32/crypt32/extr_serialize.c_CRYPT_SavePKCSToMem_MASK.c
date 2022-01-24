#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  pbData; int /*<<< orphan*/  cbData; } ;
struct TYPE_14__ {size_t cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_13__ {int cCertEncoded; int cCrlEncoded; TYPE_5__* rgCrlEncoded; TYPE_5__* rgCertEncoded; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  pbCertEncoded; int /*<<< orphan*/  cbCertEncoded; } ;
struct TYPE_11__ {int /*<<< orphan*/  pbCrlEncoded; int /*<<< orphan*/  cbCrlEncoded; } ;
typedef  TYPE_1__* PCCRL_CONTEXT ;
typedef  TYPE_2__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  size_t DWORD ;
typedef  TYPE_3__ CRYPT_SIGNED_INFO ;
typedef  TYPE_4__ CERT_BLOB ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,size_t*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int TRUE ; 

__attribute__((used)) static BOOL FUNC7(HCERTSTORE store,
 DWORD dwMsgAndCertEncodingType, void *handle)
{
    CERT_BLOB *blob = handle;
    CRYPT_SIGNED_INFO signedInfo = { 0 };
    PCCERT_CONTEXT cert = NULL;
    PCCRL_CONTEXT crl = NULL;
    DWORD size;
    BOOL ret = TRUE;

    FUNC6("(%d, %p)\n", blob->pbData ? blob->cbData : 0, blob->pbData);

    do {
        cert = FUNC2(store, cert);
        if (cert)
            signedInfo.cCertEncoded++;
    } while (cert);
    if (signedInfo.cCertEncoded)
    {
        signedInfo.rgCertEncoded = FUNC3(
         signedInfo.cCertEncoded * sizeof(CERT_BLOB));
        if (!signedInfo.rgCertEncoded)
        {
            FUNC5(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
        else
        {
            DWORD i = 0;

            do {
                cert = FUNC2(store, cert);
                if (cert)
                {
                    signedInfo.rgCertEncoded[i].cbData = cert->cbCertEncoded;
                    signedInfo.rgCertEncoded[i].pbData = cert->pbCertEncoded;
                    i++;
                }
            } while (cert);
        }
    }

    do {
        crl = FUNC1(store, crl);
        if (crl)
            signedInfo.cCrlEncoded++;
    } while (crl);
    if (signedInfo.cCrlEncoded)
    {
        signedInfo.rgCrlEncoded = FUNC3(
         signedInfo.cCrlEncoded * sizeof(CERT_BLOB));
        if (!signedInfo.rgCrlEncoded)
        {
            FUNC5(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
        else
        {
            DWORD i = 0;

            do {
                crl = FUNC1(store, crl);
                if (crl)
                {
                    signedInfo.rgCrlEncoded[i].cbData = crl->cbCrlEncoded;
                    signedInfo.rgCrlEncoded[i].pbData = crl->pbCrlEncoded;
                    i++;
                }
            } while (crl);
        }
    }
    if (ret)
    {
        ret = FUNC0(&signedInfo, NULL, &size);
        if (ret)
        {
            if (!blob->pbData)
                blob->cbData = size;
            else if (blob->cbData < size)
            {
                blob->cbData = size;
                FUNC5(ERROR_MORE_DATA);
                ret = FALSE;
            }
            else
            {
                blob->cbData = size;
                ret = FUNC0(&signedInfo, blob->pbData,
                 &blob->cbData);
            }
        }
    }
    FUNC4(signedInfo.rgCertEncoded);
    FUNC4(signedInfo.rgCrlEncoded);
    FUNC6("returning %d\n", ret);
    return ret;
}