
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
typedef int DIR ;


 int closedir (int *) ;

__attribute__((used)) static int php_plain_files_dirstream_close(php_stream *stream, int close_handle)
{
 return closedir((DIR *)stream->abstract);
}
