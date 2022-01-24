#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter_status_t ;
struct TYPE_17__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;
struct TYPE_18__ {scalar_t__ head; } ;
typedef  TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_19__ {size_t buflen; scalar_t__ buf; } ;
typedef  TYPE_3__ php_stream_bucket ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_21__ {size_t avail_in; scalar_t__ avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/  next_in; } ;
struct TYPE_20__ {scalar_t__ status; size_t inbuf_len; scalar_t__ outbuf_len; int /*<<< orphan*/  outbuf; TYPE_5__ strm; int /*<<< orphan*/  inbuf; scalar_t__ expect_concatenated; int /*<<< orphan*/  small_footprint; } ;
typedef  TYPE_4__ php_bz2_filter_data ;
typedef  TYPE_5__ bz_stream ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int BZ_STREAM_END ; 
 scalar_t__ PHP_BZ2_FINISHED ; 
 scalar_t__ PHP_BZ2_RUNNING ; 
 scalar_t__ PHP_BZ2_UNITIALIZED ; 
 int /*<<< orphan*/  PSFS_ERR_FATAL ; 
 int /*<<< orphan*/  PSFS_FEED_ME ; 
 int PSFS_FLAG_FLUSH_CLOSE ; 
 int /*<<< orphan*/  PSFS_PASS_ON ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (scalar_t__) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_stream_filter_status_t FUNC10(
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
	bz_stream *streamp;

	if (!FUNC3(thisfilter->abstract)) {
		/* Should never happen */
		return PSFS_ERR_FATAL;
	}

	data = (php_bz2_filter_data *)FUNC3(thisfilter->abstract);
	streamp = &(data->strm);

	while (buckets_in->head) {
		size_t bin = 0, desired;

		bucket = FUNC8(buckets_in->head);
		while (bin < bucket->buflen) {
			if (data->status == PHP_BZ2_UNITIALIZED) {
				status = FUNC2(streamp, 0, data->small_footprint);

				if (BZ_OK != status) {
					FUNC7(bucket);
					return PSFS_ERR_FATAL;
				}

				data->status = PHP_BZ2_RUNNING;
			}

			if (data->status != PHP_BZ2_RUNNING) {
				consumed += bucket->buflen;
				break;
			}

			desired = bucket->buflen - bin;
			if (desired > data->inbuf_len) {
				desired = data->inbuf_len;
			}
			FUNC5(data->strm.next_in, bucket->buf + bin, desired);
			data->strm.avail_in = desired;

			status = FUNC0(&(data->strm));

			if (status == BZ_STREAM_END) {
				FUNC1(&(data->strm));
				if (data->expect_concatenated) {
					data->status = PHP_BZ2_UNITIALIZED;
				} else {
					data->status = PHP_BZ2_FINISHED;
				}
			} else if (status != BZ_OK) {
				/* Something bad happened */
				FUNC7(bucket);
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
				out_bucket = FUNC9(stream, FUNC4(data->outbuf, bucketlen), bucketlen, 1, 0);
				FUNC6(buckets_out, out_bucket);
				data->strm.avail_out = data->outbuf_len;
				data->strm.next_out = data->outbuf;
				exit_status = PSFS_PASS_ON;
			} else if (status == BZ_STREAM_END && data->strm.avail_out >= data->outbuf_len) {
				/* no more data to decompress, and nothing was spat out */
				FUNC7(bucket);
				return PSFS_PASS_ON;
			}
		}

		FUNC7(bucket);
	}

	if ((data->status == PHP_BZ2_RUNNING) && (flags & PSFS_FLAG_FLUSH_CLOSE)) {
		/* Spit it out! */
		status = BZ_OK;
		while (status == BZ_OK) {
			status = FUNC0(&(data->strm));
			if (data->strm.avail_out < data->outbuf_len) {
				size_t bucketlen = data->outbuf_len - data->strm.avail_out;

				bucket = FUNC9(stream, FUNC4(data->outbuf, bucketlen), bucketlen, 1, 0);
				FUNC6(buckets_out, bucket);
				data->strm.avail_out = data->outbuf_len;
				data->strm.next_out = data->outbuf;
				exit_status = PSFS_PASS_ON;
			} else if (status == BZ_OK) {
				break;
			}
		}
	}

	if (bytes_consumed) {
		*bytes_consumed = consumed;
	}

	return exit_status;
}