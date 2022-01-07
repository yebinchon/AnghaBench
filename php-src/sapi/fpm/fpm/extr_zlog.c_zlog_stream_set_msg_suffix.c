
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlog_bool ;
struct zlog_stream {int msg_suffix_len; int msg_final_suffix_len; int * msg_final_suffix; int * msg_suffix; int decorate; int wrap; } ;


 int ZLOG_FALSE ;
 int ZLOG_TRUE ;
 int free (int *) ;
 void* malloc (size_t) ;
 int memcpy (int *,char const*,size_t) ;
 void* strlen (char const*) ;

zlog_bool zlog_stream_set_msg_suffix(
  struct zlog_stream *stream, const char *suffix, const char *final_suffix)
{
 size_t len;
 if (!stream->wrap || !stream->decorate) {
  return ZLOG_TRUE;
 }

 if (suffix != ((void*)0) && final_suffix != ((void*)0)) {
  stream->msg_suffix_len = strlen(suffix);
  stream->msg_final_suffix_len = strlen(final_suffix);
  len = stream->msg_suffix_len + stream->msg_final_suffix_len + 2;
  if (stream->msg_suffix != ((void*)0)) {
   free(stream->msg_suffix);
  }
  stream->msg_suffix = malloc(len);
  if (stream->msg_suffix == ((void*)0)) {
   return ZLOG_FALSE;
  }
  stream->msg_final_suffix = stream->msg_suffix + stream->msg_suffix_len + 1;
  memcpy(stream->msg_suffix, suffix, stream->msg_suffix_len + 1);
  memcpy(stream->msg_final_suffix, final_suffix, stream->msg_final_suffix_len + 1);
  return ZLOG_TRUE;
 }
 if (suffix != ((void*)0)) {
  stream->msg_suffix_len = strlen(suffix);
  len = stream->msg_suffix_len + 1;
  stream->msg_suffix = malloc(len);
  if (stream->msg_suffix != ((void*)0)) {
   free(stream->msg_suffix);
  }
  if (stream->msg_suffix == ((void*)0)) {
   return ZLOG_FALSE;
  }
  memcpy(stream->msg_suffix, suffix, len);
  return ZLOG_TRUE;
 }
 if (final_suffix != ((void*)0)) {
  stream->msg_final_suffix_len = strlen(final_suffix);
  len = stream->msg_final_suffix_len + 1;
  stream->msg_final_suffix = malloc(len);
  if (stream->msg_final_suffix != ((void*)0)) {
   free(stream->msg_suffix);
  }
  if (stream->msg_final_suffix == ((void*)0)) {
   return ZLOG_FALSE;
  }
  memcpy(stream->msg_final_suffix, final_suffix, len);
  return ZLOG_TRUE;
 }

 return ZLOG_TRUE;
}
