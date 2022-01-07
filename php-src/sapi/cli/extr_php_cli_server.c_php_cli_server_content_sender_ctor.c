
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ php_cli_server_content_sender ;


 int php_cli_server_buffer_ctor (int *) ;

__attribute__((used)) static void php_cli_server_content_sender_ctor(php_cli_server_content_sender *sender)
{
 php_cli_server_buffer_ctor(&sender->buffer);
}
