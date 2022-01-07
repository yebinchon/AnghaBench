
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bytes; } ;
typedef TYPE_1__ trgm_mb_char ;
typedef int regex_t ;
typedef int pg_wchar ;
struct TYPE_7__ {int ncolors; TYPE_3__* colorInfo; } ;
typedef TYPE_2__ TrgmNFA ;
struct TYPE_8__ {int expandable; int containsNonWord; scalar_t__ wordCharsCount; TYPE_1__* wordChars; } ;
typedef TYPE_3__ TrgmColorInfo ;


 int COLOR_COUNT_LIMIT ;
 scalar_t__ ISWORDCHR (int ) ;
 int convertPgWchar (int ,TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int *) ;
 int pg_reg_getcharacters (int *,int,int *,int) ;
 int pg_reg_getnumcharacters (int *,int) ;
 int pg_reg_getnumcolors (int *) ;

__attribute__((used)) static void
getColorInfo(regex_t *regex, TrgmNFA *trgmNFA)
{
 int colorsCount = pg_reg_getnumcolors(regex);
 int i;

 trgmNFA->ncolors = colorsCount;
 trgmNFA->colorInfo = (TrgmColorInfo *)
  palloc0(colorsCount * sizeof(TrgmColorInfo));




 for (i = 0; i < colorsCount; i++)
 {
  TrgmColorInfo *colorInfo = &trgmNFA->colorInfo[i];
  int charsCount = pg_reg_getnumcharacters(regex, i);
  pg_wchar *chars;
  int j;

  if (charsCount < 0 || charsCount > COLOR_COUNT_LIMIT)
  {

   colorInfo->expandable = 0;
   continue;
  }

  colorInfo->expandable = 1;
  colorInfo->containsNonWord = 0;
  colorInfo->wordChars = (trgm_mb_char *)
   palloc(sizeof(trgm_mb_char) * charsCount);
  colorInfo->wordCharsCount = 0;


  chars = (pg_wchar *) palloc(sizeof(pg_wchar) * charsCount);
  pg_reg_getcharacters(regex, i, chars, charsCount);







  for (j = 0; j < charsCount; j++)
  {
   trgm_mb_char c;

   if (!convertPgWchar(chars[j], &c))
    continue;
   if (ISWORDCHR(c.bytes))
    colorInfo->wordChars[colorInfo->wordCharsCount++] = c;
   else
    colorInfo->containsNonWord = 1;
  }

  pfree(chars);
 }
}
