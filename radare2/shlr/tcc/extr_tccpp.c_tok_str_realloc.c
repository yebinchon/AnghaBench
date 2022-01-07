
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated_len; int* str; } ;
typedef TYPE_1__ TokenString ;


 int* realloc (int*,int) ;

__attribute__((used)) static int *tok_str_realloc(TokenString *s)
{
 int *str, len;

 if (s->allocated_len == 0) {
  len = 8;
 } else {
  len = s->allocated_len * 2;
 }
 str = realloc (s->str, len * sizeof(int));
 s->allocated_len = len;
 s->str = str;
 return str;
}
