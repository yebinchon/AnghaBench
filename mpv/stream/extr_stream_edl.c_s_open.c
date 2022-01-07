
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {char* demuxer; } ;


 int STREAM_OK ;

__attribute__((used)) static int s_open (struct stream *stream)
{
    stream->demuxer = "edl";

    return STREAM_OK;
}
