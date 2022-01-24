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
struct TYPE_4__ {int /*<<< orphan*/  dir; int /*<<< orphan*/  section_name; int /*<<< orphan*/  inf_name; } ;
typedef  TYPE_1__ SETUPCOMMAND_PARAMSW ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  ADVInfo ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(const SETUPCOMMAND_PARAMSW *setup)
{
    ADVInfo info;
    HRESULT hr;

    FUNC0("(%p)\n", setup);

    FUNC1(&info, sizeof(ADVInfo));

    hr = FUNC3(setup->inf_name, setup->section_name, setup->dir, 0, &info);
    if (hr != S_OK)
        goto done;

    hr = FUNC5(&info);
    if (hr != S_OK)
        goto done;

    hr = FUNC2(&info);

done:
    FUNC4(&info);

    return S_OK;
}