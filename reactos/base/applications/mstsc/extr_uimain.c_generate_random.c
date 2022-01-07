
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int rand () ;

void
generate_random(uint8 * random)
{
  int i;

  rand();
  rand();
  for (i = 0; i < 32; i++)
  {
    random[i] = rand();
  }
}
