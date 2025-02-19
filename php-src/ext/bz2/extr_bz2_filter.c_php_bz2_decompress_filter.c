
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int php_stream_filter_status_t ;
struct TYPE_17__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_18__ {scalar_t__ head; } ;
typedef TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_19__ {size_t buflen; scalar_t__ buf; } ;
typedef TYPE_3__ php_stream_bucket ;
typedef int php_stream ;
struct TYPE_21__ {size_t avail_in; scalar_t__ avail_out; int next_out; int next_in; } ;
struct TYPE_20__ {scalar_t__ status; size_t inbuf_len; scalar_t__ outbuf_len; int outbuf; TYPE_5__ strm; int inbuf; scalar_t__ expect_concatenated; int small_footprint; } ;
typedef TYPE_4__ php_bz2_filter_data ;
typedef TYPE_5__ bz_stream ;


 int BZ2_bzDecompress (TYPE_5__*) ;
 int BZ2_bzDecompressEnd (TYPE_5__*) ;
 int BZ2_bzDecompressInit (TYPE_5__*,int ,int ) ;
 int BZ_OK ;
 int BZ_STREAM_END ;
 scalar_t__ PHP_BZ2_FINISHED ;
 scalar_t__ PHP_BZ2_RUNNING ;
 scalar_t__ PHP_BZ2_UNITIALIZED ;
 int PSFS_ERR_FATAL ;
 int PSFS_FEED_ME ;
 int PSFS_FLAG_FLUSH_CLOSE ;
 int PSFS_PASS_ON ;
 scalar_t__ Z_PTR (int ) ;
 int estrndup (int ,size_t) ;
 int memcpy (int ,scalar_t__,size_t) ;
 int php_stream_bucket_append (TYPE_2__*,TYPE_3__*) ;
 int php_stream_bucket_delref (TYPE_3__*) ;
 TYPE_3__* php_stream_bucket_make_writeable (scalar_t__) ;
 TYPE_3__* php_stream_bucket_new (int *,int ,size_t,int,int ) ;

__attribute__((used)) static php_stream_filter_status_t php_bz2_decompress_filter(
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

 if (!Z_PTR(thisfilter->abstract)) {

  return PSFS_ERR_FATAL;
 }

 data = (php_bz2_filter_data *)Z_PTR(thisfilter->abstract);
 streamp = &(data->strm);

 while (buckets_in->head) {
  size_t bin = 0, desired;

  bucket = php_stream_bucket_make_writeable(buckets_in->head);
  while (bin < bucket->buflen) {
   if (data->status == PHP_BZ2_UNITIALIZED) {
    status = BZ2_bzDecompressInit(streamp, 0, data->small_footprint);

    if (BZ_OK != status) {
     php_stream_bucket_delref(bucket);
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
   memcpy(data->strm.next_in, bucket->buf + bin, desired);
   data->strm.avail_in = desired;

   status = BZ2_bzDecompress(&(data->strm));

   if (status == BZ_STREAM_END) {
    BZ2_bzDecompressEnd(&(data->strm));
    if (data->expect_concatenated) {
     data->status = PHP_BZ2_UNITIALIZED;
    } else {
     data->status = PHP_BZ2_FINISHED;
    }
   } else if (status != BZ_OK) {

    php_stream_bucket_delref(bucket);
    return PSFS_ERR_FATAL;
   }
   desired -= data->strm.avail_in;
   data->strm.next_in = data->inbuf;
   data->strm.avail_in = 0;
   consumed += desired;
   bin += desired;

   if (data->strm.avail_out < data->outbuf_len) {
    php_stream_bucket *out_bucket;
    size_t bucketlen = data->outbuf_len - data->strm.avail_out;
    out_bucket = php_stream_bucket_new(stream, estrndup(data->outbuf, bucketlen), bucketlen, 1, 0);
    php_stream_bucket_append(buckets_out, out_bucket);
    data->strm.avail_out = data->outbuf_len;
    data->strm.next_out = data->outbuf;
    exit_status = PSFS_PASS_ON;
   } else if (status == BZ_STREAM_END && data->strm.avail_out >= data->outbuf_len) {

    php_stream_bucket_delref(bucket);
    return PSFS_PASS_ON;
   }
  }

  php_stream_bucket_delref(bucket);
 }

 if ((data->status == PHP_BZ2_RUNNING) && (flags & PSFS_FLAG_FLUSH_CLOSE)) {

  status = BZ_OK;
  while (status == BZ_OK) {
   status = BZ2_bzDecompress(&(data->strm));
   if (data->strm.avail_out < data->outbuf_len) {
    size_t bucketlen = data->outbuf_len - data->strm.avail_out;

    bucket = php_stream_bucket_new(stream, estrndup(data->outbuf, bucketlen), bucketlen, 1, 0);
    php_stream_bucket_append(buckets_out, bucket);
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
