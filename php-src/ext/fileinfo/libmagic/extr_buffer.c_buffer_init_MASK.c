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
typedef  int /*<<< orphan*/  zend_stat_t ;
struct buffer {int fd; size_t flen; scalar_t__ elen; int /*<<< orphan*/ * ebuf; scalar_t__ eoff; void const* fbuf; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 

void
FUNC3(struct buffer *b, int fd, const zend_stat_t *st, const void *data,
    size_t len)
{
	b->fd = fd;
	if (st)
		FUNC0(&b->st, st, sizeof(b->st));
	else if (b->fd == -1 || FUNC2(b->fd, &b->st) == -1)
		FUNC1(&b->st, 0, sizeof(b->st));
	b->fbuf = data;
	b->flen = len;
	b->eoff = 0;
	b->ebuf = NULL;
	b->elen = 0;
}