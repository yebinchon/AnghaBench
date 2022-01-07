
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int wrapper; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_7__ {int phar; TYPE_1__* internal_file; } ;
typedef TYPE_3__ phar_entry_data ;
struct TYPE_5__ {int timestamp; scalar_t__ is_modified; } ;


 int EOF ;
 int REPORT_ERRORS ;
 int efree (char*) ;
 int phar_flush (int ,int ,int ,int ,char**) ;
 int php_stream_wrapper_log_error (int ,int ,char*,char*) ;
 int time (int ) ;

__attribute__((used)) static int phar_stream_flush(php_stream *stream)
{
 char *error;
 int ret;
 phar_entry_data *data = (phar_entry_data *) stream->abstract;

 if (data->internal_file->is_modified) {
  data->internal_file->timestamp = time(0);
  ret = phar_flush(data->phar, 0, 0, 0, &error);
  if (error) {
   php_stream_wrapper_log_error(stream->wrapper, REPORT_ERRORS, "%s", error);
   efree(error);
  }
  return ret;
 } else {
  return EOF;
 }
}
