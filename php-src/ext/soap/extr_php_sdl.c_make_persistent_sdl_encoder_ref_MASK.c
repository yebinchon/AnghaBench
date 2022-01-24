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
typedef  scalar_t__ encodePtr ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ defaultEncoding ; 
 scalar_t__ numDefaultEncodings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC2(encodePtr *enc, HashTable *ptr_map, HashTable *bp_encoders)
{
	encodePtr tmp;

	/* do not process defaultEncoding's here */
	if ((*enc) >= defaultEncoding && (*enc) < defaultEncoding + numDefaultEncodings) {
		return;
	}

	if ((tmp = FUNC1(ptr_map, (char *)enc, sizeof(encodePtr))) != NULL) {
		*enc = tmp;
	} else {
		FUNC0(bp_encoders, enc);
	}
}