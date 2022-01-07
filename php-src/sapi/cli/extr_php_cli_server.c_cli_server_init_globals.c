
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ color; } ;
typedef TYPE_1__ zend_cli_server_globals ;



__attribute__((used)) static void cli_server_init_globals(zend_cli_server_globals *cg)
{
 cg->color = 0;
}
