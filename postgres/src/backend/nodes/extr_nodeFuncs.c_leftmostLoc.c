
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Min (int,int) ;

__attribute__((used)) static int
leftmostLoc(int loc1, int loc2)
{
 if (loc1 < 0)
  return loc2;
 else if (loc2 < 0)
  return loc1;
 else
  return Min(loc1, loc2);
}
