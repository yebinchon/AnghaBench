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
struct TYPE_5__ {int /*<<< orphan*/  install_sec; int /*<<< orphan*/  hinf; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ ADVInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DelDirs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PerUserInstall ; 
 int /*<<< orphan*/  RegisterOCXs ; 
 int /*<<< orphan*/  RunPostSetupCommands ; 
 int /*<<< orphan*/  RunPreSetupCommands ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  del_dirs_callback ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  per_user_install_callback ; 
 int /*<<< orphan*/  register_ocxs_callback ; 
 int /*<<< orphan*/  run_setup_commands_callback ; 

__attribute__((used)) static HRESULT FUNC4(ADVInfo *info)
{
    HRESULT hr;

    hr = FUNC2(info);
    if (hr != S_OK)
        return hr;

    hr = FUNC3(info->hinf, info->install_sec, RunPreSetupCommands,
                                run_setup_commands_callback, info);
    if (hr != S_OK)
        return hr;

    FUNC0(NULL);
    hr = FUNC3(info->hinf, info->install_sec,
                                RegisterOCXs, register_ocxs_callback, NULL);
    FUNC1();
    if (hr != S_OK)
        return hr;

    hr = FUNC3(info->hinf, info->install_sec,
                                PerUserInstall, per_user_install_callback, info);
    if (hr != S_OK)
        return hr;

    hr = FUNC3(info->hinf, info->install_sec, RunPostSetupCommands,
                                run_setup_commands_callback, info);
    if (hr != S_OK)
        return hr;

    hr = FUNC3(info->hinf, info->install_sec,
                                DelDirs, del_dirs_callback, info);
    if (hr != S_OK)
        return hr;

    return hr;
}