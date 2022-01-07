
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* str; TYPE_1__* state; } ;
struct TYPE_4__ {int charlen; int posbyte; } ;
typedef TYPE_2__ TParser ;



__attribute__((used)) static int
p_isurlchar(TParser *prs)
{
 char ch;


 if (prs->state->charlen != 1)
  return 0;
 ch = *(prs->str + prs->state->posbyte);

 if (ch <= 0x20 || ch >= 0x7F)
  return 0;

 switch (ch)
 {
  case '"':
  case '<':
  case '>':
  case '\\':
  case '^':
  case '`':
  case '{':
  case '|':
  case '}':
   return 0;
 }
 return 1;
}
