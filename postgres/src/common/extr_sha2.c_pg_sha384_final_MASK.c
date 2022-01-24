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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  pg_sha512_ctx ;
struct TYPE_4__ {int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ pg_sha384_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  PG_SHA384_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(pg_sha384_ctx *context, uint8 *digest)
{
	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != NULL)
	{
		FUNC1((pg_sha512_ctx *) context);

		/* Save the hash data for output: */
#ifndef WORDS_BIGENDIAN
		{
			/* Convert TO host byte order */
			int			j;

			for (j = 0; j < 6; j++)
			{
				FUNC0(context->state[j], context->state[j]);
			}
		}
#endif
		FUNC2(digest, context->state, PG_SHA384_DIGEST_LENGTH);
	}

	/* Zero out state data */
	FUNC3(context, 0, sizeof(pg_sha384_ctx));
}