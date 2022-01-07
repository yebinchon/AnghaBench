
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int* str; int allocated_len; } ;
typedef TYPE_1__ TokenString ;


 int* tok_str_realloc (TYPE_1__*) ;

void tok_str_add(TokenString *s, int t)
{
 int len, *str;

 len = s->len;
 str = s->str;
 if (len >= s->allocated_len) {
  str = tok_str_realloc (s);
 }
 str[len++] = t;
 s->len = len;
}
