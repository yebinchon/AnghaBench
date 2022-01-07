
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct php_gz_stream_data_t {int gz_file; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int Z_SYNC_FLUSH ;
 int gzflush (int ,int ) ;

__attribute__((used)) static int php_gziop_flush(php_stream *stream)
{
 struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;

 return gzflush(self->gz_file, Z_SYNC_FLUSH);
}
