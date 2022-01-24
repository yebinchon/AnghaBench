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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Clsid; int /*<<< orphan*/  MimeType; } ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  TYPE_1__ ImageCodecInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT
FUNC6(PCWSTR MimeType, CLSID *pClsid)
{
    UINT num;
    UINT size;
    UINT i;
    ImageCodecInfo *codecInfo;

    if (FUNC1(&num, &size) != Ok ||
        size == 0)
    {
        return E_FAIL;
    }

    codecInfo = FUNC3(FUNC2(), 0, size);
    if (!codecInfo)
    {
        return E_OUTOFMEMORY;
    }

    if (FUNC0(num, size, codecInfo) != Ok)
    {
        FUNC4(FUNC2(), 0, codecInfo);
        return E_FAIL;
    }

    for (i = 0; i < num; i++)
    {
        if (!FUNC5(codecInfo[i].MimeType, MimeType))
        {
            *pClsid = codecInfo[i].Clsid;
            FUNC4(FUNC2(), 0, codecInfo);
            return S_OK;
        }
    }

    FUNC4(FUNC2(), 0, codecInfo);
    return E_FAIL;
}