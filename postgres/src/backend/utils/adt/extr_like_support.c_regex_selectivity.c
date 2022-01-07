
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Selectivity ;


 int CLAMP_PROBABILITY (int ) ;
 int FIXED_CHAR_SEL ;
 int FULL_WILDCARD_SEL ;
 int pow (int ,int) ;
 int regex_selectivity_sub (char const*,int,int) ;

__attribute__((used)) static Selectivity
regex_selectivity(const char *patt, int pattlen, bool case_insensitive,
      int fixed_prefix_len)
{
 Selectivity sel;


 if (pattlen > 0 && patt[pattlen - 1] == '$' &&
  (pattlen == 1 || patt[pattlen - 2] != '\\'))
 {

  sel = regex_selectivity_sub(patt, pattlen - 1, case_insensitive);
 }
 else
 {

  sel = regex_selectivity_sub(patt, pattlen, case_insensitive);
  sel *= FULL_WILDCARD_SEL;
 }


 if (fixed_prefix_len > 0)
  sel /= pow(FIXED_CHAR_SEL, fixed_prefix_len);


 CLAMP_PROBABILITY(sel);
 return sel;
}
