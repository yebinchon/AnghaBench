#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cbCtlEncoded; int /*<<< orphan*/  pbCtlEncoded; } ;
struct TYPE_9__ {scalar_t__ properties; } ;
struct TYPE_11__ {TYPE_2__ ctx; TYPE_1__ base; } ;
typedef  TYPE_3__ ctl_t ;
struct TYPE_12__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_4__ CRYPT_DATA_BLOB ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_MD5 ; 
 int /*<<< orphan*/  CALG_SHA1 ; 
#define  CERT_MD5_HASH_PROP_ID 129 
#define  CERT_SHA1_HASH_PROP_ID 128 
 int /*<<< orphan*/  CRYPT_E_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC5(ctl_t *ctl, DWORD dwPropId,
                                   void *pvData, DWORD *pcbData)
{
    BOOL ret;
    CRYPT_DATA_BLOB blob;

    FUNC3("(%p, %d, %p, %p)\n", ctl, dwPropId, pvData, pcbData);

    if (ctl->base.properties)
        ret = FUNC1(ctl->base.properties, dwPropId, &blob);
    else
        ret = FALSE;
    if (ret)
    {
        if (!pvData)
            *pcbData = blob.cbData;
        else if (*pcbData < blob.cbData)
        {
            FUNC2(ERROR_MORE_DATA);
            *pcbData = blob.cbData;
            ret = FALSE;
        }
        else
        {
            FUNC4(pvData, blob.pbData, blob.cbData);
            *pcbData = blob.cbData;
        }
    }
    else
    {
        /* Implicit properties */
        switch (dwPropId)
        {
        case CERT_SHA1_HASH_PROP_ID:
            ret = FUNC0(ctl, dwPropId, CALG_SHA1,
             ctl->ctx.pbCtlEncoded, ctl->ctx.cbCtlEncoded, pvData, pcbData);
            break;
        case CERT_MD5_HASH_PROP_ID:
            ret = FUNC0(ctl, dwPropId, CALG_MD5,
             ctl->ctx.pbCtlEncoded, ctl->ctx.cbCtlEncoded, pvData, pcbData);
            break;
        default:
            FUNC2(CRYPT_E_NOT_FOUND);
        }
    }
    FUNC3("returning %d\n", ret);
    return ret;
}