
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16 ;
struct TYPE_5__ {int reslen; TYPE_2__* res; } ;
typedef TYPE_1__ TheSubstitute ;
struct TYPE_6__ {int * lexeme; } ;
typedef TYPE_2__ TSLexeme ;


 scalar_t__ palloc (int) ;
 int * pstrdup (int *) ;

__attribute__((used)) static TSLexeme *
copyTSLexeme(TheSubstitute *ts)
{
 TSLexeme *res;
 uint16 i;

 res = (TSLexeme *) palloc(sizeof(TSLexeme) * (ts->reslen + 1));
 for (i = 0; i < ts->reslen; i++)
 {
  res[i] = ts->res[i];
  res[i].lexeme = pstrdup(ts->res[i].lexeme);
 }

 res[ts->reslen].lexeme = ((void*)0);

 return res;
}
