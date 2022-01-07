
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {char* lexeme; int flags; int nvariant; } ;
typedef TYPE_1__ TSLexeme ;


 int MAX_NORM ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
addNorm(TSLexeme **lres, TSLexeme **lcur, char *word, int flags, uint16 NVariant)
{
 if (*lres == ((void*)0))
  *lcur = *lres = (TSLexeme *) palloc(MAX_NORM * sizeof(TSLexeme));

 if (*lcur - *lres < MAX_NORM - 1)
 {
  (*lcur)->lexeme = word;
  (*lcur)->flags = flags;
  (*lcur)->nvariant = NVariant;
  (*lcur)++;
  (*lcur)->lexeme = ((void*)0);
 }
}
