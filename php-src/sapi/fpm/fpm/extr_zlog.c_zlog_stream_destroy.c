
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct zlog_stream {int * msg_final_suffix; int * msg_suffix; int * msg_prefix; TYPE_1__ buf; } ;


 int free (int *) ;

void zlog_stream_destroy(struct zlog_stream *stream)
{
 if (stream->buf.data != ((void*)0)) {
  free(stream->buf.data);
 }
 if (stream->msg_prefix != ((void*)0)) {
  free(stream->msg_prefix);
 }
 if (stream->msg_suffix != ((void*)0)) {
  free(stream->msg_suffix);
 } else if (stream->msg_final_suffix != ((void*)0)) {
  free(stream->msg_final_suffix);
 }
}
