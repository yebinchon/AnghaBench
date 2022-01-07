
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Geqo_generations ;

__attribute__((used)) static int
gimme_number_generations(int pool_size)
{
 if (Geqo_generations > 0)
  return Geqo_generations;

 return pool_size;
}
