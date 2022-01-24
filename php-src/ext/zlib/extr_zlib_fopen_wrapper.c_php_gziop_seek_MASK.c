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
typedef  int /*<<< orphan*/  zend_off_t ;
struct php_gz_stream_data_t {int /*<<< orphan*/  gz_file; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffs)
{
	struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;

	FUNC0(self != NULL);

	if (whence == SEEK_END) {
		FUNC2(NULL, E_WARNING, "SEEK_END is not supported");
		return -1;
	}
	*newoffs = FUNC1(self->gz_file, offset, whence);

	return (*newoffs < 0) ? -1 : 0;
}