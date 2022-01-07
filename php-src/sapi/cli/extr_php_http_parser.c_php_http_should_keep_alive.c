
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ http_major; scalar_t__ http_minor; int flags; } ;
typedef TYPE_1__ php_http_parser ;


 int F_CONNECTION_CLOSE ;
 int F_CONNECTION_KEEP_ALIVE ;

int
php_http_should_keep_alive (php_http_parser *parser)
{
  if (parser->http_major > 0 && parser->http_minor > 0) {

    if (parser->flags & F_CONNECTION_CLOSE) {
      return 0;
    } else {
      return 1;
    }
  } else {

    if (parser->flags & F_CONNECTION_KEEP_ALIVE) {
      return 1;
    } else {
      return 0;
    }
  }
}
