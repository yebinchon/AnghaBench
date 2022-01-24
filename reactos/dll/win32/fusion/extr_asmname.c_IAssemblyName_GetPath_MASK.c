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
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_1__ IAssemblyNameImpl ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOT_SUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

HRESULT FUNC3(IAssemblyName *iface, LPWSTR buf, ULONG *len)
{
    ULONG buffer_size = *len;
    IAssemblyNameImpl *name = FUNC2(iface);

    if (!name->path)
        return S_OK;

    if (!buf)
        buffer_size = 0;

    *len = FUNC1(name->path) + 1;

    if (*len <= buffer_size)
        FUNC0(buf, name->path);
    else
        return E_NOT_SUFFICIENT_BUFFER;

    return S_OK;
}