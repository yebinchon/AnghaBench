
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlog_stream {int child_pid; } ;



void zlog_stream_set_child_pid(struct zlog_stream *stream, int child_pid)
{
 stream->child_pid = child_pid;
}
