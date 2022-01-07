
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int distance; int first; int second; int * rfirst; int * rsecond; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ FuzzyAttrMatchState ;


 scalar_t__ AttributeNumberIsValid (int) ;
 void* InvalidAttrNumber ;
 int MAX_FUZZY_DISTANCE ;
 int strlen (char const*) ;
 int varstr_levenshtein_less_equal (char const*,int,char const*,int,int,int,int,int,int) ;

__attribute__((used)) static void
updateFuzzyAttrMatchState(int fuzzy_rte_penalty,
        FuzzyAttrMatchState *fuzzystate, RangeTblEntry *rte,
        const char *actual, const char *match, int attnum)
{
 int columndistance;
 int matchlen;


 if (fuzzy_rte_penalty > fuzzystate->distance)
  return;





 if (actual[0] == '\0')
  return;


 matchlen = strlen(match);
 columndistance =
  varstr_levenshtein_less_equal(actual, strlen(actual), match, matchlen,
           1, 1, 1,
           fuzzystate->distance + 1
           - fuzzy_rte_penalty,
           1);





 if (columndistance > matchlen / 2)
  return;





 columndistance += fuzzy_rte_penalty;





 if (columndistance < fuzzystate->distance)
 {

  fuzzystate->distance = columndistance;
  fuzzystate->rfirst = rte;
  fuzzystate->first = attnum;
  fuzzystate->rsecond = ((void*)0);
  fuzzystate->second = InvalidAttrNumber;
 }
 else if (columndistance == fuzzystate->distance)
 {







  if (AttributeNumberIsValid(fuzzystate->second))
  {

   fuzzystate->rfirst = ((void*)0);
   fuzzystate->first = InvalidAttrNumber;
   fuzzystate->rsecond = ((void*)0);
   fuzzystate->second = InvalidAttrNumber;

   fuzzystate->distance = columndistance - 1;
  }
  else if (AttributeNumberIsValid(fuzzystate->first))
  {

   fuzzystate->rsecond = rte;
   fuzzystate->second = attnum;
  }
  else if (fuzzystate->distance <= MAX_FUZZY_DISTANCE)
  {





   fuzzystate->rfirst = rte;
   fuzzystate->first = attnum;
  }
 }
}
