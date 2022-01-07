
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t RAND_MAX ;
 size_t rand () ;

size_t myrand(size_t max) {
 size_t loops = max / RAND_MAX;
 size_t i;

 size_t ret = rand();
 for(i = 0; i < loops ;i++)
  ret += rand();

 return ret % max;
}
