
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int location; } ;
typedef TYPE_1__ pgssLocationLen ;



__attribute__((used)) static int
comp_location(const void *a, const void *b)
{
 int l = ((const pgssLocationLen *) a)->location;
 int r = ((const pgssLocationLen *) b)->location;

 if (l < r)
  return -1;
 else if (l > r)
  return +1;
 else
  return 0;
}
