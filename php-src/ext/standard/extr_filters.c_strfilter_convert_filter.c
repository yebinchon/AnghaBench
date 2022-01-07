
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int php_stream_filter_status_t ;
struct TYPE_11__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_12__ {TYPE_3__* head; } ;
typedef TYPE_2__ php_stream_bucket_brigade ;
struct TYPE_13__ {int buflen; int * buf; } ;
typedef TYPE_3__ php_stream_bucket ;
typedef int php_stream ;
typedef int php_convert_filter ;


 int PSFS_ERR_FATAL ;
 int PSFS_FLAG_NORMAL ;
 int PSFS_PASS_ON ;
 scalar_t__ SUCCESS ;
 scalar_t__ Z_PTR (int ) ;
 int php_stream_bucket_delref (TYPE_3__*) ;
 int php_stream_bucket_unlink (TYPE_3__*) ;
 int php_stream_is_persistent (int *) ;
 scalar_t__ strfilter_convert_append_bucket (int *,int *,TYPE_1__*,TYPE_2__*,int *,int ,size_t*,int ) ;

__attribute__((used)) static php_stream_filter_status_t strfilter_convert_filter(
 php_stream *stream,
 php_stream_filter *thisfilter,
 php_stream_bucket_brigade *buckets_in,
 php_stream_bucket_brigade *buckets_out,
 size_t *bytes_consumed,
 int flags
 )
{
 php_stream_bucket *bucket = ((void*)0);
 size_t consumed = 0;
 php_convert_filter *inst = (php_convert_filter *)Z_PTR(thisfilter->abstract);

 while (buckets_in->head != ((void*)0)) {
  bucket = buckets_in->head;

  php_stream_bucket_unlink(bucket);

  if (strfilter_convert_append_bucket(inst, stream, thisfilter,
    buckets_out, bucket->buf, bucket->buflen, &consumed,
    php_stream_is_persistent(stream)) != SUCCESS) {
   goto out_failure;
  }

  php_stream_bucket_delref(bucket);
 }

 if (flags != PSFS_FLAG_NORMAL) {
  if (strfilter_convert_append_bucket(inst, stream, thisfilter,
    buckets_out, ((void*)0), 0, &consumed,
    php_stream_is_persistent(stream)) != SUCCESS) {
   goto out_failure;
  }
 }

 if (bytes_consumed) {
  *bytes_consumed = consumed;
 }

 return PSFS_PASS_ON;

out_failure:
 if (bucket != ((void*)0)) {
  php_stream_bucket_delref(bucket);
 }
 return PSFS_ERR_FATAL;
}
