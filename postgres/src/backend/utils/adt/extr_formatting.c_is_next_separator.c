
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; char* character; TYPE_1__* key; int suffix; } ;
struct TYPE_4__ {scalar_t__ is_digit; } ;
typedef TYPE_2__ FormatNode ;


 scalar_t__ NODE_TYPE_ACTION ;
 scalar_t__ NODE_TYPE_END ;
 scalar_t__ S_THth (int ) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static bool
is_next_separator(FormatNode *n)
{
 if (n->type == NODE_TYPE_END)
  return 0;

 if (n->type == NODE_TYPE_ACTION && S_THth(n->suffix))
  return 1;




 n++;


 if (n->type == NODE_TYPE_END)
  return 1;

 if (n->type == NODE_TYPE_ACTION)
 {
  if (n->key->is_digit)
   return 0;

  return 1;
 }
 else if (n->character[1] == '\0' &&
    isdigit((unsigned char) n->character[0]))
  return 0;

 return 1;
}
