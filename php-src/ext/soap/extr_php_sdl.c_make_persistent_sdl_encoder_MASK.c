#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* encodePtr ;
typedef  int /*<<< orphan*/  encode ;
struct TYPE_7__ {scalar_t__ sdl_type; void* ns; void* type_str; } ;
struct TYPE_8__ {TYPE_1__ details; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (void*) ; 

__attribute__((used)) static encodePtr FUNC4(encodePtr enc, HashTable *ptr_map, HashTable *bp_types, HashTable *bp_encoders)
{
	encodePtr penc = NULL;

	penc = FUNC1(sizeof(encode));
	FUNC2(penc, 0, sizeof(encode));

	*penc = *enc;

	if (penc->details.type_str) {
		penc->details.type_str = FUNC3(penc->details.type_str);
	}
	if (penc->details.ns) {
		penc->details.ns = FUNC3(penc->details.ns);
	}

	if (penc->details.sdl_type) {
		FUNC0(&penc->details.sdl_type, ptr_map, bp_types);
	}

	return penc;
}