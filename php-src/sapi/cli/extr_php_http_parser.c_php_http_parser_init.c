
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ method; scalar_t__ flags; scalar_t__ upgrade; scalar_t__ nread; int state; } ;
typedef TYPE_1__ php_http_parser ;
typedef enum php_http_parser_type { ____Placeholder_php_http_parser_type } php_http_parser_type ;


 int PHP_HTTP_REQUEST ;
 int PHP_HTTP_RESPONSE ;
 int s_start_req ;
 int s_start_req_or_res ;
 int s_start_res ;

void
php_http_parser_init (php_http_parser *parser, enum php_http_parser_type t)
{
  parser->type = t;
  parser->state = (t == PHP_HTTP_REQUEST ? s_start_req : (t == PHP_HTTP_RESPONSE ? s_start_res : s_start_req_or_res));
  parser->nread = 0;
  parser->upgrade = 0;
  parser->flags = 0;
  parser->method = 0;
}
