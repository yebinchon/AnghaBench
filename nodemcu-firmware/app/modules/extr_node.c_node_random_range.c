
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int os_random () ;

int node_random_range(int l, int u) {

  unsigned int range = u + 1 - l;


  if (range >= 0x7fffffff) {
    unsigned int v;


    while ((v = os_random()) >= range) {
    }


    return v + l;
  }


  if (range == 1) {
    return l;
  }


  if (range == 0) {
    return os_random();
  }




  uint32_t limit = ((0x80000000 / ((range + 1) >> 1)) - 1) * range;

  uint32_t v;

  while ((v = os_random()) >= limit) {
  }



  return (v % range) + l;
}
