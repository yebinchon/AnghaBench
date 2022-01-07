
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int php_stream_filter_status_t ;
struct TYPE_10__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_11__ {scalar_t__ head; } ;
typedef TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_12__ {scalar_t__ buflen; int buf; } ;
typedef TYPE_3__ php_stream_bucket ;
typedef int php_stream ;
typedef int php_chunked_filter_data ;


 int PSFS_PASS_ON ;
 scalar_t__ Z_PTR (int ) ;
 scalar_t__ php_dechunk (int ,scalar_t__,int *) ;
 int php_stream_bucket_append (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* php_stream_bucket_make_writeable (scalar_t__) ;

__attribute__((used)) static php_stream_filter_status_t php_chunked_filter(
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
 php_chunked_filter_data *data = (php_chunked_filter_data *) Z_PTR(thisfilter->abstract);

 while (buckets_in->head) {
  bucket = php_stream_bucket_make_writeable(buckets_in->head);
  consumed += bucket->buflen;
  bucket->buflen = php_dechunk(bucket->buf, bucket->buflen, data);
  php_stream_bucket_append(buckets_out, bucket);
 }

 if (bytes_consumed) {
  *bytes_consumed = consumed;
 }

 return PSFS_PASS_ON;
}
