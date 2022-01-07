
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
typedef int phar_entry_data ;


 int phar_entry_delref (int *) ;
 int phar_stream_flush (TYPE_1__*) ;

__attribute__((used)) static int phar_stream_close(php_stream *stream, int close_handle)
{

 phar_stream_flush(stream);

 phar_entry_delref((phar_entry_data *)stream->abstract);

 return 0;
}
