
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ match_prosrc_to_literal (char const*,char const*,int,int*) ;
 int pg_mbstrlen_with_len (char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
match_prosrc_to_query(const char *prosrc, const char *queryText,
       int cursorpos)
{






 int prosrclen = strlen(prosrc);
 int querylen = strlen(queryText);
 int matchpos = 0;
 int curpos;
 int newcursorpos;

 for (curpos = 0; curpos < querylen - prosrclen; curpos++)
 {
  if (queryText[curpos] == '$' &&
   strncmp(prosrc, &queryText[curpos + 1], prosrclen) == 0 &&
   queryText[curpos + 1 + prosrclen] == '$')
  {





   if (matchpos)
    return 0;
   matchpos = pg_mbstrlen_with_len(queryText, curpos + 1)
    + cursorpos;
  }
  else if (queryText[curpos] == '\'' &&
     match_prosrc_to_literal(prosrc, &queryText[curpos + 1],
           cursorpos, &newcursorpos))
  {




   if (matchpos)
    return 0;
   matchpos = pg_mbstrlen_with_len(queryText, curpos + 1)
    + newcursorpos;
  }
 }

 return matchpos;
}
