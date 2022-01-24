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
struct TYPE_3__ {scalar_t__ ips; scalar_t__ unk; } ;
typedef  TYPE_1__ php_com_persist_helper ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static inline HRESULT FUNC1(php_com_persist_helper *helper)
{
	if (!helper->ips && helper->unk) {
		return FUNC0(helper->unk, &IID_IPersistStream, &helper->ips);
	}
	return helper->ips ? S_OK : E_NOTIMPL;
}