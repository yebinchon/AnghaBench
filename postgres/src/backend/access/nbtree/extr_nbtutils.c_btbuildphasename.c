
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
char *
btbuildphasename(int64 phasenum)
{
 switch (phasenum)
 {
  case 128:
   return "initializing";
  case 132:
   return "scanning table";
  case 130:
   return "sorting live tuples";
  case 129:
   return "sorting dead tuples";
  case 131:
   return "loading tuples in tree";
  default:
   return ((void*)0);
 }
}
