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
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * K_CPExportKey ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ kuhl_m_crypto_hRsaEnh ; 

NTSTATUS FUNC1()
{
	if(kuhl_m_crypto_hRsaEnh)
		if(FUNC0(kuhl_m_crypto_hRsaEnh))
			K_CPExportKey = NULL;
	return STATUS_SUCCESS;
}