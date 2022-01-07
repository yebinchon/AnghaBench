
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxalign; int L; } ;
typedef scalar_t__ KOption ;
typedef TYPE_1__ Header ;


 scalar_t__ Kchar ;
 scalar_t__ Kpaddalign ;
 scalar_t__ getoption (TYPE_1__*,char const**,int*) ;
 int luaL_argerror (int ,int,char*) ;

__attribute__((used)) static KOption getdetails (Header *h, size_t totalsize,
                           const char **fmt, int *psize, int *ntoalign) {
  KOption opt = getoption(h, fmt, psize);
  int align = *psize;
  if (opt == Kpaddalign) {
    if (**fmt == '\0' || getoption(h, fmt, &align) == Kchar || align == 0)
      luaL_argerror(h->L, 1, "invalid next option for option 'X'");
  }
  if (align <= 1 || opt == Kchar)
    *ntoalign = 0;
  else {
    if (align > h->maxalign)
      align = h->maxalign;
    if ((align & (align - 1)) != 0)
      luaL_argerror(h->L, 1, "format asks for alignment not power of 2");
    *ntoalign = (align - (int)(totalsize & (align - 1))) & (align - 1);
  }
  return opt;
}
