
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last; int * first; } ;
typedef TYPE_1__ php_cli_server_buffer ;



__attribute__((used)) static void php_cli_server_buffer_ctor(php_cli_server_buffer *buffer)
{
 buffer->first = ((void*)0);
 buffer->last = ((void*)0);
}
