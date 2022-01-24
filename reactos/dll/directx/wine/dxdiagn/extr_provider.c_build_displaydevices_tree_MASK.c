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
typedef  int /*<<< orphan*/  IDxDiagContainerImpl_Container ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(IDxDiagContainerImpl_Container *node)
{
    HRESULT hr;

    /* Try to use Direct3D to obtain the required information first. */
    hr = FUNC0(node);
    if (hr != E_FAIL)
        return hr;

    return FUNC1(node);
}