#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
struct TYPE_11__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_12__ {TYPE_3__* head; } ;
typedef  TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_13__ {int /*<<< orphan*/  buflen; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_3__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  php_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  PSFS_ERR_FATAL ; 
 int PSFS_FLAG_NORMAL ; 
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_stream_filter_status_t FUNC5(
	php_stream *stream,
	php_stream_filter *thisfilter,
	php_stream_bucket_brigade *buckets_in,
	php_stream_bucket_brigade *buckets_out,
	size_t *bytes_consumed,
	int flags
	)
{
	php_stream_bucket *bucket = NULL;
	size_t consumed = 0;
	php_convert_filter *inst = (php_convert_filter *)FUNC0(thisfilter->abstract);

	while (buckets_in->head != NULL) {
		bucket = buckets_in->head;

		FUNC2(bucket);

		if (FUNC4(inst, stream, thisfilter,
				buckets_out, bucket->buf, bucket->buflen, &consumed,
				FUNC3(stream)) != SUCCESS) {
			goto out_failure;
		}

		FUNC1(bucket);
	}

	if (flags != PSFS_FLAG_NORMAL) {
		if (FUNC4(inst, stream, thisfilter,
				buckets_out, NULL, 0, &consumed,
				FUNC3(stream)) != SUCCESS) {
			goto out_failure;
		}
	}

	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}

	return PSFS_PASS_ON;

out_failure:
	if (bucket != NULL) {
		FUNC1(bucket);
	}
	return PSFS_ERR_FATAL;
}