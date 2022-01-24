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
struct TYPE_4__ {struct TYPE_4__* pPrivateKey; struct TYPE_4__* pPrivateProperties; scalar_t__ cbPublicProperties; scalar_t__ pPublicProperties; struct TYPE_4__* pName; } ;
typedef  TYPE_1__* PKULL_M_KEY_CNG_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

void FUNC2(PKULL_M_KEY_CNG_BLOB cngKey)
{
	if(cngKey)
	{
		if(cngKey->pName)
			FUNC0(cngKey->pName);
		if(cngKey->cbPublicProperties && cngKey->pPublicProperties)
			FUNC1(cngKey->pPublicProperties, cngKey->cbPublicProperties);
		if(cngKey->pPrivateProperties)
			FUNC0(cngKey->pPrivateProperties);
		if(cngKey->pPrivateKey)
			FUNC0(cngKey->pPrivateKey);
		FUNC0(cngKey);
	}
}