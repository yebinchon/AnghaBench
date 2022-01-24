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
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * kull_m_cred_CredTypeToStrings ; 

PCWCHAR FUNC1(DWORD type)
{
	if(type >= FUNC0(kull_m_cred_CredTypeToStrings))
		type = 0;
	return kull_m_cred_CredTypeToStrings[type];
}