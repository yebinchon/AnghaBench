
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parentof (int) ;

__attribute__((used)) static int
rightneighbor(int x)
{




 x++;







 if (((x + 1) & x) == 0)
  x = parentof(x);

 return x;
}
