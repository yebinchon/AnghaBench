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
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT FUNC5(HMODULE module, HRSRC resinfo, void **buffer, DWORD *length)
{
    HGLOBAL resource;

    *length = FUNC4(module, resinfo);
    if(*length == 0) return FUNC1(FUNC0());

    resource = FUNC2(module, resinfo);
    if( !resource ) return FUNC1(FUNC0());

    *buffer = FUNC3(resource);
    if(*buffer == NULL) return FUNC1(FUNC0());

    return S_OK;
}