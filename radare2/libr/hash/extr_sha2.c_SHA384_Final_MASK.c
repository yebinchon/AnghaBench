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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  R_SHA512_CTX ;
typedef  TYPE_1__ R_SHA384_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA384_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(ut8 digest[], R_SHA384_CTX *context) {
	ut64 *d = (ut64 *) digest;

	/* Sanity check: */
	if (!context) {
		return;
	}

	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != (ut8 *) 0) {
		FUNC1 ((R_SHA512_CTX *) context);

		/* Save the hash data for output: */
#if BYTE_ORDER == LITTLE_ENDIAN
		{
			/* Convert TO host byte order */
			int j;
			for (j = 0; j < 6; j++) {
				FUNC0 (context->state[j], context->state[j]);
				*d++ = context->state[j];
			}
		}
#else
		memcpy (d, context->state, SHA384_DIGEST_LENGTH);
#endif
	}

	/* Zero out state data */
	FUNC3 (context, 0, sizeof(*context));
}