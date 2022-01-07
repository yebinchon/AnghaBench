
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int len; } ;
typedef TYPE_1__ KeyWord ;


 int KeyWord_INDEX_FILTER (char const) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static const KeyWord *
index_seq_search(const char *str, const KeyWord *kw, const int *index)
{
 int poz;

 if (!KeyWord_INDEX_FILTER(*str))
  return ((void*)0);

 if ((poz = *(index + (*str - ' '))) > -1)
 {
  const KeyWord *k = kw + poz;

  do
  {
   if (strncmp(str, k->name, k->len) == 0)
    return k;
   k++;
   if (!k->name)
    return ((void*)0);
  } while (*str == *k->name);
 }
 return ((void*)0);
}
