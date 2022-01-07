
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ chr ;



__attribute__((used)) static int
before(chr x, chr y)
{
 if (x < y)
  return 1;
 return 0;
}
