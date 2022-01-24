#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t data; } ;
struct TYPE_7__ {scalar_t__ pos; scalar_t__ nbytes; TYPE_1__ buffer; int /*<<< orphan*/  curOffset; scalar_t__ dirty; } ;
typedef  TYPE_2__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,size_t) ; 

size_t
FUNC4(BufFile *file, void *ptr, size_t size)
{
	size_t		nread = 0;
	size_t		nthistime;

	if (file->dirty)
	{
		if (FUNC1(file) != 0)
			return 0;			/* could not flush... */
		FUNC0(!file->dirty);
	}

	while (size > 0)
	{
		if (file->pos >= file->nbytes)
		{
			/* Try to load more data into buffer. */
			file->curOffset += file->pos;
			file->pos = 0;
			file->nbytes = 0;
			FUNC2(file);
			if (file->nbytes <= 0)
				break;			/* no more data available */
		}

		nthistime = file->nbytes - file->pos;
		if (nthistime > size)
			nthistime = size;
		FUNC0(nthistime > 0);

		FUNC3(ptr, file->buffer.data + file->pos, nthistime);

		file->pos += nthistime;
		ptr = (void *) ((char *) ptr + nthistime);
		size -= nthistime;
		nread += nthistime;
	}

	return nread;
}