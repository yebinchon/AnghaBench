
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlog_bool ;
struct zlog_stream {int decorate; scalar_t__ prefix_buffer; scalar_t__ msg_quote; } ;



void zlog_stream_set_decorating(struct zlog_stream *stream, zlog_bool decorate)
{
 if (decorate) {
  stream->decorate = 1;
 } else {
  stream->decorate = 0;
  stream->msg_quote = 0;
  stream->prefix_buffer = 0;
 }
}
