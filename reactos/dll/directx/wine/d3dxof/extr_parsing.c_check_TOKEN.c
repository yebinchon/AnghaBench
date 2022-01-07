
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_token; scalar_t__ token_present; } ;
typedef TYPE_1__ parse_buffer ;
typedef int WORD ;


 scalar_t__ TRUE ;
 int parse_TOKEN (TYPE_1__*) ;

__attribute__((used)) static WORD check_TOKEN(parse_buffer * buf)
{
  if (buf->token_present)
    return buf->current_token;

  buf->current_token = parse_TOKEN(buf);
  buf->token_present = TRUE;

  return buf->current_token;
}
