
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;


 int ERROR ;



 int elog (int ,char*,int) ;
 double similarity_threshold ;
 double strict_word_similarity_threshold ;
 double word_similarity_threshold ;

double
index_strategy_get_limit(StrategyNumber strategy)
{
 switch (strategy)
 {
  case 130:
   return similarity_threshold;
  case 128:
   return word_similarity_threshold;
  case 129:
   return strict_word_similarity_threshold;
  default:
   elog(ERROR, "unrecognized strategy number: %d", strategy);
   break;
 }

 return 0.0;
}
