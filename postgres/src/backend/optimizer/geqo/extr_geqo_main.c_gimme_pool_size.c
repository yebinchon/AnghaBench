
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Geqo_effort ;
 int Geqo_pool_size ;
 scalar_t__ ceil (double) ;
 double pow (double,int) ;

__attribute__((used)) static int
gimme_pool_size(int nr_rel)
{
 double size;
 int minsize;
 int maxsize;


 if (Geqo_pool_size >= 2)
  return Geqo_pool_size;

 size = pow(2.0, nr_rel + 1.0);

 maxsize = 50 * Geqo_effort;
 if (size > maxsize)
  return maxsize;

 minsize = 10 * Geqo_effort;
 if (size < minsize)
  return minsize;

 return (int) ceil(size);
}
