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
struct php_gz_stream_data_t {int /*<<< orphan*/ * stream; int /*<<< orphan*/ * gz_file; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (struct php_gz_stream_data_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(php_stream *stream, int close_handle)
{
	struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;
	int ret = EOF;

	if (close_handle) {
		if (self->gz_file) {
			ret = FUNC1(self->gz_file);
			self->gz_file = NULL;
		}
		if (self->stream) {
			FUNC2(self->stream);
			self->stream = NULL;
		}
	}
	FUNC0(self);

	return ret;
}