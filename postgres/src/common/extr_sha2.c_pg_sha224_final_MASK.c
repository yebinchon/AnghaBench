#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ pg_sha224_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  PG_SHA224_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(pg_sha224_ctx *context, uint8 *digest)
{
	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != NULL)
	{
		FUNC1(context);

#ifndef WORDS_BIGENDIAN
		{
			/* Convert TO host byte order */
			int			j;

			for (j = 0; j < 8; j++)
			{
				FUNC0(context->state[j], context->state[j]);
			}
		}
#endif
		FUNC2(digest, context->state, PG_SHA224_DIGEST_LENGTH);
	}

	/* Clean up state data: */
	FUNC3(context, 0, sizeof(pg_sha224_ctx));
}