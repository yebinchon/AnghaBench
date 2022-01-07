
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TuplesortMethod ;
const char *
tuplesort_method_name(TuplesortMethod m)
{
 switch (m)
 {
  case 129:
   return "still in progress";
  case 128:
   return "top-N heapsort";
  case 130:
   return "quicksort";
  case 131:
   return "external sort";
  case 132:
   return "external merge";
 }

 return "unknown";
}
