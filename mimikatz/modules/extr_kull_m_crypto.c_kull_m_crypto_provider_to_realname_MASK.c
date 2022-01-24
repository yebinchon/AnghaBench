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
struct TYPE_3__ {int /*<<< orphan*/ * realname; scalar_t__ name; } ;
typedef  scalar_t__ PCWSTR ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 TYPE_1__* kull_m_crypto_provider_names ; 

PCWCHAR FUNC2(PCWSTR name)
{
	DWORD i;
	if(name)
		for(i = 0; i < FUNC0(kull_m_crypto_provider_names); i++)
			if((FUNC1(name, kull_m_crypto_provider_names[i].name) == 0) || (FUNC1(name, kull_m_crypto_provider_names[i].name + 3) == 0))
				return kull_m_crypto_provider_names[i].realname;
	return NULL;
}