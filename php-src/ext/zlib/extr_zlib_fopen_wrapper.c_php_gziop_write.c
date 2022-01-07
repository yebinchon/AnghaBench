
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct php_gz_stream_data_t {int gz_file; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int gzwrite (int ,char*,size_t) ;

__attribute__((used)) static ssize_t php_gziop_write(php_stream *stream, const char *buf, size_t count)
{
 struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;


 return gzwrite(self->gz_file, (char *) buf, count);
}
