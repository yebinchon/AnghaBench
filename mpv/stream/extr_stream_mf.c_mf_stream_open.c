
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* demuxer; } ;
typedef TYPE_1__ stream_t ;


 int STREAM_OK ;

__attribute__((used)) static int
mf_stream_open (stream_t *stream)
{
  stream->demuxer = "mf";

  return STREAM_OK;
}
