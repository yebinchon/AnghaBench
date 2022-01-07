
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; } ;
typedef TYPE_1__ TheLexeme ;


 int cmpLexeme (TYPE_1__ const*,TYPE_1__ const*) ;
 int cmpLexemeInfo (int ,int ) ;

__attribute__((used)) static int
cmpTheLexeme(const void *a, const void *b)
{
 const TheLexeme *la = (const TheLexeme *) a;
 const TheLexeme *lb = (const TheLexeme *) b;
 int res;

 if ((res = cmpLexeme(la, lb)) != 0)
  return res;

 return -cmpLexemeInfo(la->entries, lb->entries);
}
