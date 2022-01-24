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
typedef  int uint64 ;
struct TYPE_4__ {int* bitcount; int* buffer; } ;
typedef  TYPE_1__ pg_sha512_ctx ;

/* Variables and functions */
 int PG_SHA512_BLOCK_LENGTH ; 
 unsigned int PG_SHA512_SHORT_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC3(pg_sha512_ctx *context)
{
	unsigned int usedspace;

	usedspace = (context->bitcount[0] >> 3) % PG_SHA512_BLOCK_LENGTH;
#ifndef WORDS_BIGENDIAN
	/* Convert FROM host byte order */
	FUNC0(context->bitcount[0], context->bitcount[0]);
	FUNC0(context->bitcount[1], context->bitcount[1]);
#endif
	if (usedspace > 0)
	{
		/* Begin padding with a 1 bit: */
		context->buffer[usedspace++] = 0x80;

		if (usedspace <= PG_SHA512_SHORT_BLOCK_LENGTH)
		{
			/* Set-up for the last transform: */
			FUNC2(&context->buffer[usedspace], 0, PG_SHA512_SHORT_BLOCK_LENGTH - usedspace);
		}
		else
		{
			if (usedspace < PG_SHA512_BLOCK_LENGTH)
			{
				FUNC2(&context->buffer[usedspace], 0, PG_SHA512_BLOCK_LENGTH - usedspace);
			}
			/* Do second-to-last transform: */
			FUNC1(context, context->buffer);

			/* And set-up for the last transform: */
			FUNC2(context->buffer, 0, PG_SHA512_BLOCK_LENGTH - 2);
		}
	}
	else
	{
		/* Prepare for final transform: */
		FUNC2(context->buffer, 0, PG_SHA512_SHORT_BLOCK_LENGTH);

		/* Begin padding with a 1 bit: */
		*context->buffer = 0x80;
	}
	/* Store the length of input data (in bits): */
	*(uint64 *) &context->buffer[PG_SHA512_SHORT_BLOCK_LENGTH] = context->bitcount[1];
	*(uint64 *) &context->buffer[PG_SHA512_SHORT_BLOCK_LENGTH + 8] = context->bitcount[0];

	/* Final transform: */
	FUNC1(context, context->buffer);
}