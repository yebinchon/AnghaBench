
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_6__ {int * datastream; int * controlstream; } ;
typedef TYPE_2__ php_ftp_dirstream_data ;


 int efree (TYPE_2__*) ;
 int php_stream_close (int *) ;

__attribute__((used)) static int php_ftp_dirstream_close(php_stream *stream, int close_handle)
{
 php_ftp_dirstream_data *data = stream->abstract;


 if (data->controlstream) {
  php_stream_close(data->controlstream);
  data->controlstream = ((void*)0);
 }

 php_stream_close(data->datastream);
 data->datastream = ((void*)0);

 efree(data);
 stream->abstract = ((void*)0);

 return 0;
}
