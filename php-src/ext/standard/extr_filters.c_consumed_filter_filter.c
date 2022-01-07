
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int php_stream_filter_status_t ;
struct TYPE_11__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_12__ {TYPE_3__* head; } ;
typedef TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_13__ {scalar_t__ buflen; } ;
typedef TYPE_3__ php_stream_bucket ;
typedef int php_stream ;
struct TYPE_14__ {scalar_t__ consumed; int offset; } ;
typedef TYPE_4__ php_consumed_filter_data ;


 int PSFS_FLAG_FLUSH_CLOSE ;
 int PSFS_PASS_ON ;
 int SEEK_SET ;
 scalar_t__ Z_PTR (int ) ;
 int php_stream_bucket_append (TYPE_2__*,TYPE_3__*) ;
 int php_stream_bucket_unlink (TYPE_3__*) ;
 int php_stream_seek (int *,scalar_t__,int ) ;
 int php_stream_tell (int *) ;

__attribute__((used)) static php_stream_filter_status_t consumed_filter_filter(
 php_stream *stream,
 php_stream_filter *thisfilter,
 php_stream_bucket_brigade *buckets_in,
 php_stream_bucket_brigade *buckets_out,
 size_t *bytes_consumed,
 int flags
 )
{
 php_consumed_filter_data *data = (php_consumed_filter_data *)Z_PTR(thisfilter->abstract);
 php_stream_bucket *bucket;
 size_t consumed = 0;

 if (data->offset == ~0) {
  data->offset = php_stream_tell(stream);
 }
 while ((bucket = buckets_in->head) != ((void*)0)) {
  php_stream_bucket_unlink(bucket);
  consumed += bucket->buflen;
  php_stream_bucket_append(buckets_out, bucket);
 }
 if (bytes_consumed) {
  *bytes_consumed = consumed;
 }
 if (flags & PSFS_FLAG_FLUSH_CLOSE) {
  php_stream_seek(stream, data->offset + data->consumed, SEEK_SET);
 }
 data->consumed += consumed;

 return PSFS_PASS_ON;
}
