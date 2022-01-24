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
struct TYPE_4__ {int /*<<< orphan*/  keysize; int /*<<< orphan*/  (* hash ) (void const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ HTAB ;
typedef  int /*<<< orphan*/  HASHACTION ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ) ; 

void *
FUNC2(HTAB *hashp,
			const void *keyPtr,
			HASHACTION action,
			bool *foundPtr)
{
	return FUNC0(hashp,
									   keyPtr,
									   hashp->hash(keyPtr, hashp->keysize),
									   action,
									   foundPtr);
}