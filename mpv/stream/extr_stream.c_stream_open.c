
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;


 int STREAM_READ ;
 struct stream* stream_create (char const*,int ,int *,struct mpv_global*) ;

struct stream *stream_open(const char *filename, struct mpv_global *global)
{
    return stream_create(filename, STREAM_READ, ((void*)0), global);
}
