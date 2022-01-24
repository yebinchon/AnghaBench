#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_4__* info; TYPE_2__* signerHandles; } ;
struct TYPE_17__ {TYPE_5__ signed_data; } ;
struct TYPE_19__ {TYPE_6__ u; scalar_t__ crypt_prov; } ;
struct TYPE_18__ {int /*<<< orphan*/  pbData; int /*<<< orphan*/  cbData; } ;
struct TYPE_15__ {TYPE_3__* rgSignerInfo; } ;
struct TYPE_12__ {scalar_t__ cAttr; } ;
struct TYPE_14__ {int /*<<< orphan*/  EncryptedHash; TYPE_1__ AuthAttrs; } ;
struct TYPE_13__ {int /*<<< orphan*/  contentHash; int /*<<< orphan*/  authAttrHash; } ;
typedef  int /*<<< orphan*/  PCERT_PUBLIC_KEY_INFO ;
typedef  scalar_t__ HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  size_t DWORD ;
typedef  TYPE_7__ CRYPT_HASH_BLOB ;
typedef  TYPE_8__ CDecodeMsg ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 

__attribute__((used)) static BOOL FUNC6(CDecodeMsg *msg,
 HCRYPTPROV prov, DWORD signerIndex, PCERT_PUBLIC_KEY_INFO keyInfo)
{
    HCRYPTKEY key;
    BOOL ret;

    if (!prov)
        prov = msg->crypt_prov;
    ret = FUNC3(prov, X509_ASN_ENCODING, keyInfo, &key);
    if (ret)
    {
        HCRYPTHASH hash;
        CRYPT_HASH_BLOB reversedHash;

        if (msg->u.signed_data.info->rgSignerInfo[signerIndex].AuthAttrs.cAttr)
            hash = msg->u.signed_data.signerHandles[signerIndex].authAttrHash;
        else
            hash = msg->u.signed_data.signerHandles[signerIndex].contentHash;
        ret = FUNC0(&reversedHash,
         &msg->u.signed_data.info->rgSignerInfo[signerIndex].EncryptedHash);
        if (ret)
        {
            FUNC1(&reversedHash);
            ret = FUNC5(hash, reversedHash.pbData,
             reversedHash.cbData, key, NULL, 0);
            FUNC4(reversedHash.pbData);
        }
        FUNC2(key);
    }
    return ret;
}