#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_off_t ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int SEEK_END ; 
 int SEEK_SET ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffset) /* {{{ */
{
	HashTable *data = (HashTable *)stream->abstract;

	if (!data) {
		return -1;
	}

	if (whence == SEEK_END) {
		whence = SEEK_SET;
		offset = FUNC2(data) + offset;
	}

	if (whence == SEEK_SET) {
		FUNC0(data);
	}

	if (offset < 0) {
		return -1;
	} else {
		*newoffset = 0;
		while (*newoffset < offset && FUNC1(data) == SUCCESS) {
			++(*newoffset);
		}
		return 0;
	}
}