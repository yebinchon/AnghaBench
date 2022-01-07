
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
hash(unsigned *uv,
  int n)
{
 int i;
 unsigned h;

 h = 0;
 for (i = 0; i < n; i++)
  h ^= uv[i];
 return h;
}
