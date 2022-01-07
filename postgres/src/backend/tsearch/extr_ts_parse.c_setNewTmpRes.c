
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lastRes; TYPE_1__* tmpRes; } ;
struct TYPE_6__ {struct TYPE_6__* lexeme; } ;
typedef TYPE_1__ TSLexeme ;
typedef int ParsedLex ;
typedef TYPE_2__ LexizeData ;


 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
setNewTmpRes(LexizeData *ld, ParsedLex *lex, TSLexeme *res)
{
 if (ld->tmpRes)
 {
  TSLexeme *ptr;

  for (ptr = ld->tmpRes; ptr->lexeme; ptr++)
   pfree(ptr->lexeme);
  pfree(ld->tmpRes);
 }
 ld->tmpRes = res;
 ld->lastRes = lex;
}
