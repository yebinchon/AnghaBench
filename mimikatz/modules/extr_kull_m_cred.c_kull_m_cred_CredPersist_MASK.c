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
typedef  char* PCWCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 char** kull_m_cred_CredPersistToStrings ; 

PCWCHAR FUNC1(DWORD persist)
{
	if(persist < FUNC0(kull_m_cred_CredPersistToStrings))
		return kull_m_cred_CredPersistToStrings[persist];
	else return L"?";
}