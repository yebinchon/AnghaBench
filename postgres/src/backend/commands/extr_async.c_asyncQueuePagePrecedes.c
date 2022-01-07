
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asyncQueuePageDiff (int,int) ;

__attribute__((used)) static bool
asyncQueuePagePrecedes(int p, int q)
{
 return asyncQueuePageDiff(p, q) < 0;
}
