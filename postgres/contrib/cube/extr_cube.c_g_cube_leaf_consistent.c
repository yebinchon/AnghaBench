
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
typedef int NDBOX ;
 int cube_cmp_v0 (int *,int *) ;
 int cube_contains_v0 (int *,int *) ;
 int cube_overlap_v0 (int *,int *) ;

bool
g_cube_leaf_consistent(NDBOX *key,
        NDBOX *query,
        StrategyNumber strategy)
{
 bool retval;

 switch (strategy)
 {
  case 129:
   retval = cube_overlap_v0(key, query);
   break;
  case 128:
   retval = (cube_cmp_v0(key, query) == 0);
   break;
  case 132:
  case 130:
   retval = cube_contains_v0(key, query);
   break;
  case 133:
  case 131:
   retval = cube_contains_v0(query, key);
   break;
  default:
   retval = 0;
 }
 return retval;
}
