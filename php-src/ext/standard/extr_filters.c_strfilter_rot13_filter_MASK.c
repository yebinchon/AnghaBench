#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
typedef  int /*<<< orphan*/  php_stream_filter ;
struct TYPE_8__ {scalar_t__ head; } ;
typedef  TYPE_1__ php_stream_bucket_brigade ;
struct TYPE_9__ {scalar_t__ buflen; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rot13_from ; 
 int /*<<< orphan*/  rot13_to ; 

__attribute__((used)) static php_stream_filter_status_t FUNC3(
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

	while (buckets_in->head) {
		bucket = FUNC1(buckets_in->head);

		FUNC2(bucket->buf, bucket->buflen, rot13_from, rot13_to, 52);
		consumed += bucket->buflen;

		FUNC0(buckets_out, bucket);
	}

	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}

	return PSFS_PASS_ON;
}