
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_line_num; scalar_t__ allocated_len; scalar_t__ len; int * str; } ;
typedef TYPE_1__ TokenString ;



void tok_str_new(TokenString *s)
{
 s->str = ((void*)0);
 s->len = 0;
 s->allocated_len = 0;
 s->last_line_num = -1;
}
