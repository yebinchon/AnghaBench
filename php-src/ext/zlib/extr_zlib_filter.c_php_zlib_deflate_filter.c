
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_15__ {size_t avail_in; scalar_t__ avail_out; scalar_t__ next_out; int next_in; } ;
struct TYPE_16__ {size_t inbuf_len; scalar_t__ outbuf_len; scalar_t__ outbuf; TYPE_14__ strm; int inbuf; } ;
typedef TYPE_1__ php_zlib_filter_data ;
typedef int php_stream_filter_status_t ;
struct TYPE_17__ {int abstract; } ;
typedef TYPE_2__ php_stream_filter ;
struct TYPE_18__ {TYPE_4__* head; } ;
typedef TYPE_3__ php_stream_bucket_brigade ;
struct TYPE_19__ {size_t buflen; scalar_t__ buf; } ;
typedef TYPE_4__ php_stream_bucket ;
typedef int php_stream ;


 int PSFS_ERR_FATAL ;
 int PSFS_FEED_ME ;
 int PSFS_FLAG_FLUSH_CLOSE ;
 int PSFS_FLAG_FLUSH_INC ;
 int PSFS_PASS_ON ;
 int Z_FINISH ;
 int Z_FULL_FLUSH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 scalar_t__ Z_PTR (int ) ;
 int Z_SYNC_FLUSH ;
 int deflate (TYPE_14__*,int ) ;
 int estrndup (char*,size_t) ;
 int memcpy (int ,scalar_t__,size_t) ;
 int php_stream_bucket_append (TYPE_3__*,TYPE_4__*) ;
 int php_stream_bucket_delref (TYPE_4__*) ;
 TYPE_4__* php_stream_bucket_make_writeable (TYPE_4__*) ;
 TYPE_4__* php_stream_bucket_new (int *,int ,size_t,int,int ) ;

__attribute__((used)) static php_stream_filter_status_t php_zlib_deflate_filter(
 php_stream *stream,
 php_stream_filter *thisfilter,
 php_stream_bucket_brigade *buckets_in,
 php_stream_bucket_brigade *buckets_out,
 size_t *bytes_consumed,
 int flags
 )
{
 php_zlib_filter_data *data;
 php_stream_bucket *bucket;
 size_t consumed = 0;
 int status;
 php_stream_filter_status_t exit_status = PSFS_FEED_ME;

 if (!thisfilter || !Z_PTR(thisfilter->abstract)) {

  return PSFS_ERR_FATAL;
 }

 data = (php_zlib_filter_data *)(Z_PTR(thisfilter->abstract));

 while (buckets_in->head) {
  size_t bin = 0, desired;

  bucket = buckets_in->head;

  bucket = php_stream_bucket_make_writeable(bucket);

  while (bin < (unsigned int) bucket->buflen) {
   desired = bucket->buflen - bin;
   if (desired > data->inbuf_len) {
    desired = data->inbuf_len;
   }
   memcpy(data->strm.next_in, bucket->buf + bin, desired);
   data->strm.avail_in = desired;

   status = deflate(&(data->strm), flags & PSFS_FLAG_FLUSH_CLOSE ? Z_FULL_FLUSH : (flags & PSFS_FLAG_FLUSH_INC ? Z_SYNC_FLUSH : Z_NO_FLUSH));
   if (status != Z_OK) {

    php_stream_bucket_delref(bucket);
    return PSFS_ERR_FATAL;
   }
   desired -= data->strm.avail_in;
   data->strm.next_in = data->inbuf;
   data->strm.avail_in = 0;
   bin += desired;

   if (data->strm.avail_out < data->outbuf_len) {
    php_stream_bucket *out_bucket;
    size_t bucketlen = data->outbuf_len - data->strm.avail_out;

    out_bucket = php_stream_bucket_new(
     stream, estrndup((char *) data->outbuf, bucketlen), bucketlen, 1, 0);
    php_stream_bucket_append(buckets_out, out_bucket);
    data->strm.avail_out = data->outbuf_len;
    data->strm.next_out = data->outbuf;
    exit_status = PSFS_PASS_ON;
   }
  }
  consumed += bucket->buflen;
  php_stream_bucket_delref(bucket);
 }

 if (flags & PSFS_FLAG_FLUSH_CLOSE) {

  status = Z_OK;
  while (status == Z_OK) {
   status = deflate(&(data->strm), Z_FINISH);
   if (data->strm.avail_out < data->outbuf_len) {
    size_t bucketlen = data->outbuf_len - data->strm.avail_out;

    bucket = php_stream_bucket_new(
     stream, estrndup((char *) data->outbuf, bucketlen), bucketlen, 1, 0);
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
