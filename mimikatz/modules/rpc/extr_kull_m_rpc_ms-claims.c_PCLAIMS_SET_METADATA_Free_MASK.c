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
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/ * Format; } ;
typedef  int /*<<< orphan*/  PMIDL_TYPE_PICKLING_INFO ;
typedef  int /*<<< orphan*/  PFORMAT_STRING ;
typedef  int /*<<< orphan*/  PCLAIMS_SET_METADATA ;

/* Variables and functions */
 int /*<<< orphan*/  Claims_StubDesc ; 
 TYPE_1__ Claims__MIDL_TypeFormatString ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t _Claims_MIDL_TYPE_FORMAT_OFFSET ; 
 int /*<<< orphan*/  __MIDL_TypePicklingInfo ; 

void FUNC1(handle_t _MidlEsHandle, PCLAIMS_SET_METADATA * _pType)
{
    FUNC0(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &Claims_StubDesc, (PFORMAT_STRING) &Claims__MIDL_TypeFormatString.Format[_Claims_MIDL_TYPE_FORMAT_OFFSET], _pType);
}