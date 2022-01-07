
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
typedef int stream_t ;


 int STREAM_WRITE ;
 int * stream_create (char const*,int ,int *,struct mpv_global*) ;

stream_t *open_output_stream(const char *filename, struct mpv_global *global)
{
    return stream_create(filename, STREAM_WRITE, ((void*)0), global);
}
