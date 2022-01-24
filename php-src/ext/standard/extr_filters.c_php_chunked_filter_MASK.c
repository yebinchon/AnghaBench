#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
struct TYPE_10__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_11__ {scalar_t__ head; } ;
typedef  TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_12__ {scalar_t__ buflen; int /*<<< orphan*/  buf; } ;
typedef  TYPE_3__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  php_chunked_filter_data ;

/* Variables and functions */
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (scalar_t__) ; 

__attribute__((used)) static php_stream_filter_status_t FUNC4(
	php_stream *stream,
	php_stream_filter *thisfilter,
	php_stream_bucket_brigade *buckets_in,
	php_stream_bucket_brigade *buckets_out,
	size_t *bytes_consumed,
	int flags
	)
{
	php_stream_bucket *bucket;
	size_t consumed = 0;
	php_chunked_filter_data *data = (php_chunked_filter_data *) FUNC0(thisfilter->abstract);

	while (buckets_in->head) {
		bucket = FUNC3(buckets_in->head);
		consumed += bucket->buflen;
		bucket->buflen = FUNC1(bucket->buf, bucket->buflen, data);
		FUNC2(buckets_out, bucket);
	}

	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}

	return PSFS_PASS_ON;
}