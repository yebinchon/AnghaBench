
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;




 int compare_pathkeys (int *,int *) ;

bool
pathkeys_contained_in(List *keys1, List *keys2)
{
 switch (compare_pathkeys(keys1, keys2))
 {
  case 128:
  case 129:
   return 1;
  default:
   break;
 }
 return 0;
}
