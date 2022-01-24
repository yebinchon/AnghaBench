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
typedef  int /*<<< orphan*/  LPKSPROPERTYSET ;
typedef  int /*<<< orphan*/  IKsBufferPropertySetImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

HRESULT FUNC2(
    IKsBufferPropertySetImpl *piks)
{
    FUNC1("(%p)\n",piks);

    while (FUNC0((LPKSPROPERTYSET)piks) > 0);

    return S_OK;
}