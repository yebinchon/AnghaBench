
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lexeme; } ;
typedef TYPE_1__ TheLexeme ;


 int strcmp (int *,int *) ;

__attribute__((used)) static int
cmpLexeme(const TheLexeme *a, const TheLexeme *b)
{
 if (a->lexeme == ((void*)0))
 {
  if (b->lexeme == ((void*)0))
   return 0;
  else
   return 1;
 }
 else if (b->lexeme == ((void*)0))
  return -1;

 return strcmp(a->lexeme, b->lexeme);
}
