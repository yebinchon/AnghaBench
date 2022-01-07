
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int B32 ;

__attribute__((used)) static void clear(register uint32_t (*buf)[B32])
{
  register int i;
  register int j;

  for (j = 0;j < 16;++j) {
    for (i = 0;i < B32;++i)
      (*buf)[i] = (uint32_t)~0;
    ++buf;
  }
}
