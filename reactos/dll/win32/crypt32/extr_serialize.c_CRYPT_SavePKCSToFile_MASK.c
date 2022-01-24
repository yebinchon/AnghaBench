#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cbData; scalar_t__ pbData; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ CERT_BLOB ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 void* FUNC4 (void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC5(HCERTSTORE store,
 DWORD dwMsgAndCertEncodingType, void *handle)
{
    CERT_BLOB blob = { 0, NULL };
    BOOL ret;

    FUNC3("(%p)\n", handle);

    ret = FUNC0(store, dwMsgAndCertEncodingType, &blob);
    if (ret)
    {
        blob.pbData = FUNC1(blob.cbData);
        if (blob.pbData)
        {
            ret = FUNC0(store, dwMsgAndCertEncodingType, &blob);
            if (ret)
                ret = FUNC4(handle, blob.pbData, blob.cbData,
                 &blob.cbData, NULL);
        }
        else
        {
            FUNC2(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
    }
    FUNC3("returning %d\n", ret);
    return ret;
}