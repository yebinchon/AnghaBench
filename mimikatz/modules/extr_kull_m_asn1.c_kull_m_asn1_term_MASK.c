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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ASN1dec ; 
 int /*<<< orphan*/ * ASN1enc ; 
 int /*<<< orphan*/ * hASN1Module ; 

void FUNC3()
{
	if(ASN1dec)
	{
		FUNC0(ASN1dec);
		ASN1dec = NULL;
	}
	if(ASN1enc)
	{
		FUNC1(ASN1enc);
		ASN1enc = NULL;
	}
	if(hASN1Module)
	{
		FUNC2(hASN1Module);
		hASN1Module = NULL;
	}
}