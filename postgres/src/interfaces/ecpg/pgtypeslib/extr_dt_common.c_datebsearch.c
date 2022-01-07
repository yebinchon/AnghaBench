
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* token; } ;
typedef TYPE_1__ datetkn ;


 int TOKMAXLEN ;
 int strncmp (char const*,scalar_t__*,int ) ;

__attribute__((used)) static const datetkn *
datebsearch(const char *key, const datetkn *base, unsigned int nel)
{
 if (nel > 0)
 {
  const datetkn *last = base + nel - 1,
       *position;
  int result;

  while (last >= base)
  {
   position = base + ((last - base) >> 1);

   result = (int) key[0] - (int) position->token[0];
   if (result == 0)
   {

    result = strncmp(key, position->token, TOKMAXLEN);
    if (result == 0)
     return position;
   }
   if (result < 0)
    last = position - 1;
   else
    base = position + 1;
  }
 }
 return ((void*)0);
}
