
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carc {scalar_t__ co; scalar_t__ to; } ;



__attribute__((used)) static int
carc_cmp(const void *a, const void *b)
{
 const struct carc *aa = (const struct carc *) a;
 const struct carc *bb = (const struct carc *) b;

 if (aa->co < bb->co)
  return -1;
 if (aa->co > bb->co)
  return +1;
 if (aa->to < bb->to)
  return -1;
 if (aa->to > bb->to)
  return +1;
 return 0;
}
