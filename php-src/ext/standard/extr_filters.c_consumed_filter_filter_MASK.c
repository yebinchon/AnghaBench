#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
struct TYPE_11__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_12__ {TYPE_3__* head; } ;
typedef  TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_13__ {scalar_t__ buflen; } ;
typedef  TYPE_3__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_14__ {scalar_t__ consumed; int /*<<< orphan*/  offset; } ;
typedef  TYPE_4__ php_consumed_filter_data ;

/* Variables and functions */
 int PSFS_FLAG_FLUSH_CLOSE ; 
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static php_stream_filter_status_t FUNC5(
	php_stream *stream,
	php_stream_filter *thisfilter,
	php_stream_bucket_brigade *buckets_in,
	php_stream_bucket_brigade *buckets_out,
	size_t *bytes_consumed,
	int flags
	)
{
	php_consumed_filter_data *data = (php_consumed_filter_data *)FUNC0(thisfilter->abstract);
	php_stream_bucket *bucket;
	size_t consumed = 0;

	if (data->offset == ~0) {
		data->offset = FUNC4(stream);
	}
	while ((bucket = buckets_in->head) != NULL) {
		FUNC2(bucket);
		consumed += bucket->buflen;
		FUNC1(buckets_out, bucket);
	}
	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}
	if (flags & PSFS_FLAG_FLUSH_CLOSE) {
		FUNC3(stream, data->offset + data->consumed, SEEK_SET);
	}
	data->consumed += consumed;

	return PSFS_PASS_ON;
}