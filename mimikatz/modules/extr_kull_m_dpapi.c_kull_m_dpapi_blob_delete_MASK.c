#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* pbSign; struct TYPE_4__* pbData; struct TYPE_4__* pbHmack2Key; struct TYPE_4__* pbHmackKey; struct TYPE_4__* pbSalt; struct TYPE_4__* szDescription; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(PKULL_M_DPAPI_BLOB blob)
{
	if(blob)
	{
		if(blob->szDescription)
			FUNC0(blob->szDescription);
		if(blob->pbSalt)
			FUNC0(blob->pbSalt);
		if(blob->pbHmackKey)
			FUNC0(blob->pbHmackKey);
		if(blob->pbHmack2Key)
			FUNC0(blob->pbHmack2Key);
		if(blob->pbData) 
			FUNC0(blob->pbData);
		if(blob->pbSign)
			FUNC0(blob->pbSign);
		FUNC0(blob);
	}
}