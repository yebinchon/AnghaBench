#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ extent; int gc_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  n_writers; } ;
typedef  TYPE_1__ pgssSharedState ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGSS_TEXT_FILE ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pgss ; 
 int FUNC8 (int,char const*,int) ; 

__attribute__((used)) static bool
FUNC9(const char *query, int query_len,
			Size *query_offset, int *gc_count)
{
	Size		off;
	int			fd;

	/*
	 * We use a spinlock to protect extent/n_writers/gc_count, so that
	 * multiple processes may execute this function concurrently.
	 */
	{
		volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

		FUNC2(&s->mutex);
		off = s->extent;
		s->extent += query_len + 1;
		s->n_writers++;
		if (gc_count)
			*gc_count = s->gc_count;
		FUNC3(&s->mutex);
	}

	*query_offset = off;

	/* Now write the data into the successfully-reserved part of the file */
	fd = FUNC1(PGSS_TEXT_FILE, O_RDWR | O_CREAT | PG_BINARY);
	if (fd < 0)
		goto error;

	if (FUNC7(fd, off, SEEK_SET) != off)
		goto error;

	if (FUNC8(fd, query, query_len) != query_len)
		goto error;
	if (FUNC8(fd, "\0", 1) != 1)
		goto error;

	FUNC0(fd);

	/* Mark our write complete */
	{
		volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

		FUNC2(&s->mutex);
		s->n_writers--;
		FUNC3(&s->mutex);
	}

	return true;

error:
	FUNC4(LOG,
			(FUNC5(),
			 FUNC6("could not write file \"%s\": %m",
					PGSS_TEXT_FILE)));

	if (fd >= 0)
		FUNC0(fd);

	/* Mark our write complete */
	{
		volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

		FUNC2(&s->mutex);
		s->n_writers--;
		FUNC3(&s->mutex);
	}

	return false;
}