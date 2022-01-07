
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlog_bool ;
struct zlog_stream {int msg_quote; scalar_t__ decorate; } ;



void zlog_stream_set_msg_quoting(struct zlog_stream *stream, zlog_bool quote)
{
 stream->msg_quote = quote && stream->decorate ? 1 : 0;
}
