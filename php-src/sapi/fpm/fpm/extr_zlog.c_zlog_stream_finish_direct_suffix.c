
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlog_bool ;
struct zlog_stream {scalar_t__ len; char* msg_suffix; int msg_suffix_len; size_t msg_final_suffix_len; int * msg_final_suffix; scalar_t__ msg_quote; int line; int function; } ;


 scalar_t__ zlog_limit ;
 int zlog_stream_direct_write (struct zlog_stream*,char*,int) ;
 int zlog_stream_direct_write_ex (struct zlog_stream*,int *,size_t,char*,int) ;
 int zlog_stream_prefix_ex (struct zlog_stream*,int ,int ) ;

__attribute__((used)) static inline void zlog_stream_finish_direct_suffix(struct zlog_stream *stream)
{
 if (stream->msg_quote) {
  zlog_stream_direct_write(stream, "\"", 1);
  ++stream->len;
 }
 if (stream->msg_suffix != ((void*)0)) {

  zlog_stream_direct_write(stream, stream->msg_suffix, stream->msg_suffix_len);
  stream->len += stream->msg_suffix_len;
 }
 if (stream->msg_final_suffix != ((void*)0)) {
  if (stream->len + stream->msg_final_suffix_len >= zlog_limit) {
   zlog_bool quoting = stream->msg_quote;
   size_t final_suffix_wrap = stream->len + stream->msg_final_suffix_len + 1 - zlog_limit;
   zlog_stream_direct_write_ex(
     stream, stream->msg_final_suffix,
     stream->msg_final_suffix_len - final_suffix_wrap, "\n", 1);
   stream->msg_quote = 0;
   zlog_stream_prefix_ex(stream, stream->function, stream->line);
   stream->msg_quote = quoting;
   zlog_stream_direct_write_ex(
     stream,
     stream->msg_final_suffix + (stream->msg_final_suffix_len - final_suffix_wrap),
     final_suffix_wrap, "\n", 1);
  } else {
   zlog_stream_direct_write_ex(
     stream, stream->msg_final_suffix, stream->msg_final_suffix_len, "\n", 1);
  }
 } else {
  zlog_stream_direct_write(stream, "\n", 1);
 }
}
