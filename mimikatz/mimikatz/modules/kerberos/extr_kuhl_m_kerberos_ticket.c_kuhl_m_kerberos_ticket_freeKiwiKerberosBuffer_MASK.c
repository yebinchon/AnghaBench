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
struct TYPE_3__ {scalar_t__ Value; } ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_1__* PKIWI_KERBEROS_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

void FUNC1(PKIWI_KERBEROS_BUFFER pBuffer)
{
	if(pBuffer->Value)
		pBuffer->Value = (PUCHAR) FUNC0(pBuffer->Value);
}