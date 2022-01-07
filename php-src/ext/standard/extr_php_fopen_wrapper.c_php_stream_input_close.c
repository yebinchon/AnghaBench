
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * abstract; } ;
typedef TYPE_1__ php_stream ;


 int efree (int *) ;

__attribute__((used)) static int php_stream_input_close(php_stream *stream, int close_handle)
{
 efree(stream->abstract);
 stream->abstract = ((void*)0);

 return 0;
}
