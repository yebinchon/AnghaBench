
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lookup {char const* l_word; } ;


 int _ (char*) ;
 scalar_t__ ciequal (char const*,char const*) ;
 scalar_t__ ciprefix (char const*,char const*) ;
 scalar_t__ itsabbr (char const*,char const*) ;
 struct lookup const* lasts ;
 scalar_t__ noise ;
 int warning (int ,char const*,...) ;
 struct lookup* wday_names ;

__attribute__((used)) static const struct lookup *
byword(const char *word, const struct lookup *table)
{
 const struct lookup *foundlp;
 const struct lookup *lp;

 if (word == ((void*)0) || table == ((void*)0))
  return ((void*)0);






 if (table == lasts && ciprefix("last", word) && word[4])
 {
  if (word[4] == '-')
   warning(_("\"%s\" is undocumented; use \"last%s\" instead"),
     word, word + 5);
  else
  {
   word += 4;
   table = wday_names;
  }
 }




 for (lp = table; lp->l_word != ((void*)0); ++lp)
  if (ciequal(word, lp->l_word))
   return lp;




 foundlp = ((void*)0);
 for (lp = table; lp->l_word != ((void*)0); ++lp)
  if (ciprefix(word, lp->l_word))
  {
   if (foundlp == ((void*)0))
    foundlp = lp;
   else
    return ((void*)0);
  }

 if (foundlp && noise)
 {

  bool pre_2017c_match = 0;

  for (lp = table; lp->l_word; lp++)
   if (itsabbr(word, lp->l_word))
   {
    if (pre_2017c_match)
    {
     warning(_("\"%s\" is ambiguous in pre-2017c zic"), word);
     break;
    }
    pre_2017c_match = 1;
   }
 }

 return foundlp;
}
