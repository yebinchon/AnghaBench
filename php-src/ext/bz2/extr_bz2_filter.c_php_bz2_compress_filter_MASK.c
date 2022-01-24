#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
struct TYPE_15__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_16__ {scalar_t__ head; } ;
typedef  TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_17__ {size_t buflen; scalar_t__ buf; } ;
typedef  TYPE_3__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_14__ {size_t avail_in; scalar_t__ avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/  next_in; } ;
struct TYPE_18__ {size_t inbuf_len; scalar_t__ outbuf_len; int /*<<< orphan*/  outbuf; TYPE_13__ strm; int /*<<< orphan*/  inbuf; } ;
typedef  TYPE_4__ php_bz2_filter_data ;

/* Variables and functions */
 int FUNC0 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BZ_FINISH ; 
 int BZ_FINISH_OK ; 
 int /*<<< orphan*/  BZ_FLUSH ; 
 int BZ_FLUSH_OK ; 
 int /*<<< orphan*/  BZ_RUN ; 
 int BZ_RUN_OK ; 
 int /*<<< orphan*/  PSFS_ERR_FATAL ; 
 int /*<<< orphan*/  PSFS_FEED_ME ; 
 int PSFS_FLAG_FLUSH_CLOSE ; 
 int PSFS_FLAG_FLUSH_INC ; 
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (scalar_t__) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_stream_filter_status_t FUNC8(
	php_stream *stream,
	php_stream_filter *thisfilter,
	php_stream_bucket_brigade *buckets_in,
	php_stream_bucket_brigade *buckets_out,
	size_t *bytes_consumed,
	int flags
	)
{
	php_bz2_filter_data *data;
	php_stream_bucket *bucket;
	size_t consumed = 0;
	int status;
	php_stream_filter_status_t exit_status = PSFS_FEED_ME;

	if (!FUNC1(thisfilter->abstract)) {
		/* Should never happen */
		return PSFS_ERR_FATAL;
	}

	data = (php_bz2_filter_data *)FUNC1(thisfilter->abstract);

	while (buckets_in->head) {
		size_t bin = 0, desired;

		bucket = FUNC6(buckets_in->head);

		while (bin < bucket->buflen) {
			desired = bucket->buflen - bin;
			if (desired > data->inbuf_len) {
				desired = data->inbuf_len;
			}
			FUNC3(data->strm.next_in, bucket->buf + bin, desired);
			data->strm.avail_in = desired;

			status = FUNC0(&(data->strm), flags & PSFS_FLAG_FLUSH_CLOSE ? BZ_FINISH : (flags & PSFS_FLAG_FLUSH_INC ? BZ_FLUSH : BZ_RUN));
			if (status != BZ_RUN_OK && status != BZ_FLUSH_OK && status != BZ_FINISH_OK) {
				/* Something bad happened */
				FUNC5(bucket);
				return PSFS_ERR_FATAL;
			}
			desired -= data->strm.avail_in; /* desired becomes what we consumed this round through */
			data->strm.next_in = data->inbuf;
			data->strm.avail_in = 0;
			consumed += desired;
			bin += desired;

			if (data->strm.avail_out < data->outbuf_len) {
				php_stream_bucket *out_bucket;
				size_t bucketlen = data->outbuf_len - data->strm.avail_out;

				out_bucket = FUNC7(stream, FUNC2(data->outbuf, bucketlen), bucketlen, 1, 0);
				FUNC4(buckets_out, out_bucket);
				data->strm.avail_out = data->outbuf_len;
				data->strm.next_out = data->outbuf;
				exit_status = PSFS_PASS_ON;
			}
		}
		FUNC5(bucket);
	}

	if (flags & PSFS_FLAG_FLUSH_CLOSE) {
		/* Spit it out! */
		status = BZ_FINISH_OK;
		while (status == BZ_FINISH_OK) {
			status = FUNC0(&(data->strm), BZ_FINISH);
			if (data->strm.avail_out < data->outbuf_len) {
				size_t bucketlen = data->outbuf_len - data->strm.avail_out;

				bucket = FUNC7(stream, FUNC2(data->outbuf, bucketlen), bucketlen, 1, 0);
				FUNC4(buckets_out, bucket);
				data->strm.avail_out = data->outbuf_len;
				data->strm.next_out = data->outbuf;
				exit_status = PSFS_PASS_ON;
			}
		}
	}

	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}
	return exit_status;
}