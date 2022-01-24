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
struct TYPE_4__ {int bitcount; int /*<<< orphan*/  const* buffer; } ;
typedef  TYPE_1__ pg_sha256_ctx ;

/* Variables and functions */
 int PG_SHA256_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC2(pg_sha256_ctx *context, const uint8 *data, size_t len)
{
	size_t		freespace,
				usedspace;

	/* Calling with no data is valid (we do nothing) */
	if (len == 0)
		return;

	usedspace = (context->bitcount >> 3) % PG_SHA256_BLOCK_LENGTH;
	if (usedspace > 0)
	{
		/* Calculate how much free space is available in the buffer */
		freespace = PG_SHA256_BLOCK_LENGTH - usedspace;

		if (len >= freespace)
		{
			/* Fill the buffer completely and process it */
			FUNC1(&context->buffer[usedspace], data, freespace);
			context->bitcount += freespace << 3;
			len -= freespace;
			data += freespace;
			FUNC0(context, context->buffer);
		}
		else
		{
			/* The buffer is not yet full */
			FUNC1(&context->buffer[usedspace], data, len);
			context->bitcount += len << 3;
			/* Clean up: */
			usedspace = freespace = 0;
			return;
		}
	}
	while (len >= PG_SHA256_BLOCK_LENGTH)
	{
		/* Process as many complete blocks as we can */
		FUNC0(context, data);
		context->bitcount += PG_SHA256_BLOCK_LENGTH << 3;
		len -= PG_SHA256_BLOCK_LENGTH;
		data += PG_SHA256_BLOCK_LENGTH;
	}
	if (len > 0)
	{
		/* There's left-overs, so save 'em */
		FUNC1(context->buffer, data, len);
		context->bitcount += len << 3;
	}
	/* Clean up: */
	usedspace = freespace = 0;
}