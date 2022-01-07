
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 TYPE_1__* dents ;
 scalar_t__ xstrcmp (char const*,int ) ;

__attribute__((used)) static int dentfind(const char *fname, int n)
{
 int i = 0;

 for (; i < n; ++i)
  if (xstrcmp(fname, dents[i].name) == 0)
   return i;

 return 0;
}
