
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int php_stream_filter_status_t ;
struct TYPE_15__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_16__ {scalar_t__ head; } ;
typedef TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_17__ {size_t buflen; scalar_t__ buf; } ;
typedef TYPE_3__ php_stream_bucket ;
typedef int php_stream ;
struct TYPE_14__ {size_t avail_in; scalar_t__ avail_out; int next_out; int next_in; } ;
struct TYPE_18__ {size_t inbuf_len; scalar_t__ outbuf_len; int outbuf; TYPE_13__ strm; int inbuf; } ;
typedef TYPE_4__ php_bz2_filter_data ;


 int BZ2_bzCompress (TYPE_13__*,int ) ;
 int BZ_FINISH ;
 int BZ_FINISH_OK ;
 int BZ_FLUSH ;
 int BZ_FLUSH_OK ;
 int BZ_RUN ;
 int BZ_RUN_OK ;
 int PSFS_ERR_FATAL ;
 int PSFS_FEED_ME ;
 int PSFS_FLAG_FLUSH_CLOSE ;
 int PSFS_FLAG_FLUSH_INC ;
 int PSFS_PASS_ON ;
 scalar_t__ Z_PTR (int ) ;
 int estrndup (int ,size_t) ;
 int memcpy (int ,scalar_t__,size_t) ;
 int php_stream_bucket_append (TYPE_2__*,TYPE_3__*) ;
 int php_stream_bucket_delref (TYPE_3__*) ;
 TYPE_3__* php_stream_bucket_make_writeable (scalar_t__) ;
 TYPE_3__* php_stream_bucket_new (int *,int ,size_t,int,int ) ;

__attribute__((used)) static php_stream_filter_status_t php_bz2_compress_filter(
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

 if (!Z_PTR(thisfilter->abstract)) {

  return PSFS_ERR_FATAL;
 }

 data = (php_bz2_filter_data *)Z_PTR(thisfilter->abstract);

 while (buckets_in->head) {
  size_t bin = 0, desired;

  bucket = php_stream_bucket_make_writeable(buckets_in->head);

  while (bin < bucket->buflen) {
   desired = bucket->buflen - bin;
   if (desired > data->inbuf_len) {
    desired = data->inbuf_len;
   }
   memcpy(data->strm.next_in, bucket->buf + bin, desired);
   data->strm.avail_in = desired;

   status = BZ2_bzCompress(&(data->strm), flags & PSFS_FLAG_FLUSH_CLOSE ? BZ_FINISH : (flags & PSFS_FLAG_FLUSH_INC ? BZ_FLUSH : BZ_RUN));
   if (status != BZ_RUN_OK && status != BZ_FLUSH_OK && status != BZ_FINISH_OK) {

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
   }
  }
  php_stream_bucket_delref(bucket);
 }

 if (flags & PSFS_FLAG_FLUSH_CLOSE) {

  status = BZ_FINISH_OK;
  while (status == BZ_FINISH_OK) {
   status = BZ2_bzCompress(&(data->strm), BZ_FINISH);
   if (data->strm.avail_out < data->outbuf_len) {
    size_t bucketlen = data->outbuf_len - data->strm.avail_out;

    bucket = php_stream_bucket_new(stream, estrndup(data->outbuf, bucketlen), bucketlen, 1, 0);
    php_stream_bucket_append(buckets_out, bucket);
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
