
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int len; int * name; } ;
typedef TYPE_1__ KeySuffix ;


 scalar_t__ strncmp (char const*,int *,int ) ;

__attribute__((used)) static const KeySuffix *
suff_search(const char *str, const KeySuffix *suf, int type)
{
 const KeySuffix *s;

 for (s = suf; s->name != ((void*)0); s++)
 {
  if (s->type != type)
   continue;

  if (strncmp(str, s->name, s->len) == 0)
   return s;
 }
 return ((void*)0);
}
