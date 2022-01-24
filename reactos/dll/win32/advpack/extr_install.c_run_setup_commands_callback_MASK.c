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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  working_dir; } ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_1__ ADVInfo ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 int MAX_INF_STRING_LENGTH ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(HINF hinf, PCWSTR field, const void *arg)
{
    const ADVInfo *info = (const ADVInfo *)arg;
    INFCONTEXT context;
    HRESULT hr = S_OK;
    DWORD size;

    BOOL ok = FUNC0(hinf, field, NULL, &context);

    for (; ok; ok = FUNC1(&context, &context))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];

        if (!FUNC2(&context, NULL, NULL, NULL, buffer,
                               MAX_INF_STRING_LENGTH, &size))
            continue;

        if (FUNC3(buffer, info->working_dir, NULL) != S_OK)
            hr = E_FAIL;
    }

    return hr;
}