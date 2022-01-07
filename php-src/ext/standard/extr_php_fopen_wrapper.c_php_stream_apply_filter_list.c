
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int php_stream_filter ;
struct TYPE_4__ {int writefilters; int readfilters; } ;
typedef TYPE_1__ php_stream ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*,char*) ;
 int php_stream_filter_append (int *,int *) ;
 int * php_stream_filter_create (char*,int *,int ) ;
 int php_stream_is_persistent (TYPE_1__*) ;
 char* php_strtok_r (char*,char*,char**) ;
 int php_url_decode (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void php_stream_apply_filter_list(php_stream *stream, char *filterlist, int read_chain, int write_chain)
{
 char *p, *token = ((void*)0);
 php_stream_filter *temp_filter;

 p = php_strtok_r(filterlist, "|", &token);
 while (p) {
  php_url_decode(p, strlen(p));
  if (read_chain) {
   if ((temp_filter = php_stream_filter_create(p, ((void*)0), php_stream_is_persistent(stream)))) {
    php_stream_filter_append(&stream->readfilters, temp_filter);
   } else {
    php_error_docref(((void*)0), E_WARNING, "Unable to create filter (%s)", p);
   }
  }
  if (write_chain) {
   if ((temp_filter = php_stream_filter_create(p, ((void*)0), php_stream_is_persistent(stream)))) {
    php_stream_filter_append(&stream->writefilters, temp_filter);
   } else {
    php_error_docref(((void*)0), E_WARNING, "Unable to create filter (%s)", p);
   }
  }
  p = php_strtok_r(((void*)0), "|", &token);
 }
}
