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
typedef  int /*<<< orphan*/  ber_int_t ;
typedef  size_t USHORT ;
struct TYPE_3__ {size_t NameCount; int /*<<< orphan*/ * Names; int /*<<< orphan*/  NameType; } ;
typedef  TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef  int /*<<< orphan*/  BerElement ;

/* Variables and functions */
 int /*<<< orphan*/  ID_CTX_PRINCIPALNAME_NAME_STRING ; 
 int /*<<< orphan*/  ID_CTX_PRINCIPALNAME_NAME_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(BerElement * pBer, PKERB_EXTERNAL_NAME name)
{
	ber_int_t nameType = name->NameType;
	USHORT i;
	FUNC1(pBer, "{t{i}t{{", FUNC0(ID_CTX_PRINCIPALNAME_NAME_TYPE), nameType, FUNC0(ID_CTX_PRINCIPALNAME_NAME_STRING));
	for(i = 0; i < name->NameCount; i++)
		FUNC2(pBer, &name->Names[i]);
	FUNC1(pBer, "}}}");
}